library(shiny)
library(readxl)
library(ggplot2)
library(plotly)
library(DT)

# --- 1. MEMBACA DATASET ---
data_cuaca <- read_excel("DataSetTugas3.xlsx")
data_cuaca <- type.convert(as.data.frame(data_cuaca), as.is = TRUE)

# --- 2. USER INTERFACE (UI) ---
ui <- fluidPage(
  titlePanel("Tugas 3: Visualisasi Data Cuaca Interaktif"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Gunakan menu di bawah untuk mengatur visualisasi data."),
      
      # Input 1: Memilih variabel X
      selectInput("var_x", "1. Pilih Variabel X:", 
                  choices = names(data_cuaca)),
      
      # Input 2: Memilih variabel Y (Digunakan untuk Scatter dan Line Plot)
      selectInput("var_y", "2. Pilih Variabel Y (Khusus Scatter/Line):", 
                  choices = names(data_cuaca), 
                  selected = names(data_cuaca)[2]), # Default ke kolom kedua
      
      # Input 3: Memilih jenis visualisasi
      selectInput("jenis_plot", "3. Pilih Jenis Visualisasi:",
                  choices = c("a. Scatter Plot Interaktif",
                              "b. Line Plot Interaktif",
                              "c. Bar Plot Interaktif",
                              "d. Tabel Data"))
    ),
    
    mainPanel(
      # Tempat untuk menampilkan output grafik atau tabel
      plotlyOutput("plot_hasil"),
      DTOutput("tabel_hasil")
    )
  )
)

# --- 3. SERVER LOGIC ---
server <- function(input, output) {
  
  # Logika untuk merender Plot Interaktif
  output$plot_hasil <- renderPlotly({
    # Mencegah plot dirender jika user memilih "Tabel Data"
    req(input$jenis_plot != "d. Tabel Data")
    
    # Membuat dasar plot dengan ggplot2
    p <- ggplot(data_cuaca, aes(x = .data[[input$var_x]]))
    
    # Menyesuaikan bentuk plot berdasarkan pilihan user
    if (input$jenis_plot == "a. Scatter Plot Interaktif") {
      p <- p + geom_point(aes(y = .data[[input$var_y]]), color = "blue", alpha = 0.6) +
        theme_minimal() +
        labs(title = paste("Scatter Plot:", input$var_x, "vs", input$var_y))
      
    } else if (input$jenis_plot == "b. Line Plot Interaktif") {
      p <- p + geom_line(aes(y = .data[[input$var_y]]), color = "red") +
        theme_minimal() +
        labs(title = paste("Line Plot:", input$var_x, "vs", input$var_y))
      
    } else if (input$jenis_plot == "c. Bar Plot Interaktif") {
      # Bar plot biasanya digunakan untuk melihat distribusi/jumlah kategori satu variabel
      p <- p + geom_bar(fill = "forestgreen") +
        theme_minimal() +
        labs(title = paste("Bar Plot Distribusi:", input$var_x))
    }
    
    # Mengonversi plot statis ggplot2 menjadi interaktif menggunakan plotly
    ggplotly(p)
  })
  
  # Logika untuk merender Tabel Data
  output$tabel_hasil <- renderDT({
    # Hanya jalankan fungsi ini jika user memilih "Tabel Data"
    req(input$jenis_plot == "d. Tabel Data")
    
    # Membuat tabel interaktif yang bisa di-scroll dan di-search
    datatable(data_cuaca, options = list(pageLength = 10, scrollX = TRUE))
  })
}

# --- 4. MENJALANKAN APLIKASI ---
shinyApp(ui = ui, server = server)