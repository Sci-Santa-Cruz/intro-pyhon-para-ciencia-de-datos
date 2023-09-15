
# estandarizar fecha 
from datetime import datetime

def datetime_convert(date_str,output_format = '%Y-%m-%d %H:%M:%S'):
    """
    Intenta estandarizar una cadena de fecha y hora en el formato 'YYYY-MM-DD HH:MM:SS'.

    Esta función intenta convertir una cadena de fecha y hora en uno de los formatos admitidos:
    - 'YYYY-MM-DDTHH:MM:SS'
    - 'YYYY-MM-DD HH:MM:SS'
    - 'MM/DD/YYYYTHH:MM:SS'
    - 'MM/DD/YYYY HH:MM:SS'

    Si el formato de entrada no coincide con ninguno de los formatos admitidos,
    devuelve un objeto datetime en el formato 'YYYY-MM-DD HH:MM:SS' si es posible.

    Parámetros:
    date_str (str): La cadena de fecha y hora en uno de los formatos admitidos.

    Devuelve:
    datetime: Un objeto datetime en el formato 'YYYY-MM-DD HH:MM:SS'.

    Ejemplos:
    is_date_matching('2023-08-24T15:30:00') devuelve un objeto datetime en formato 'YYYY-MM-DD HH:MM:SS'
    is_date_matching('08/24/2023 15:30:00') devuelve un objeto datetime en formato 'YYYY-MM-DD HH:MM:SS'
    """
    try:
        # Intenta convertir la cadena en el primer formato
        d = datetime.strptime(date_str, '%Y-%m-%dT%H:%M:%S')
        return d.strftime(output_format)
    except:
        try:
            # Intenta convertir la cadena en el segundo formato
            d = datetime.strptime(date_str, '%Y-%m-%d %H:%M:%S')
            return d.strftime(output_format)
        except:
            try:
                # Intenta convertir la cadena en el tercer formato
                d = datetime.strptime(date_str, '%m/%d/%YT%H:%M:%S')
                return d.strftime(output_format)
            except:
                # Si no coincide con ninguno de los formatos anteriores, intenta el cuarto formato
                d = datetime.strptime(date_str, '%m/%d/%Y %H:%M:%S')
                return d.strftime(output_format)
