
def verificar_input_numerico(mensaje):
    while True:
        try:
            valor = int(input(mensaje))
            return valor
        except ValueError:
            print("Ingresa un valor numérico válido.")

def tupla_libro(libro):
    return libro.titulo, libro.autor, libro.genero, libro.calificaciones
