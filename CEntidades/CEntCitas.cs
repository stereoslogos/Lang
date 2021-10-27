﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEntCitas
    {
        private string cod_cita;
        private DateTime fecha;
        private DateTime hora;
        private string id_paciente;
        private string id_medico;
        private int valor;
        private string observaciones;
        private byte activo;
        private byte tipo;

        public string Cod_cita { get => cod_cita; set => cod_cita = value; }
        public DateTime Fecha { get => fecha; set => fecha = value; }
        public DateTime Hora { get => hora; set => hora = value; }
        public string Id_paciente { get => id_paciente; set => id_paciente = value; }
        public string Id_medico { get => id_medico; set => id_medico = value; }
        public int Valor { get => valor; set => valor = value; }
        public string Observaciones { get => observaciones; set => observaciones = value; }
        public byte Activo { get => activo; set => activo = value; }
        public byte Tipo { get => tipo; set => tipo = value; }
    }
}
