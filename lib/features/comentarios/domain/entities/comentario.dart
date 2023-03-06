class Comentario {
  late int idContenido;
  late String contenido;
  late int idEscritor;

  Comentario(this.idContenido, this.contenido, this.idEscritor);

  void Publicar() {
    //Posibles ideas de como implementar este metodo:
    /**
     * Subirlo a la base de datos 
     * Integrarlo a la lista de comentarios de un evento? 
     * Hacer que se actualice la interfaz (aunque esto no ocurriría aqui)
     
     */
  }

  void Eliminar() {
    /**
     * Ideas para la implementacion del metodo
     * borrar de la base de datos
     * Navigator.pop() ? 
     */
  }
}
