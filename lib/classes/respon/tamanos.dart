
class Tamano {

  // Atributos --------------------------------
  // Atributos de entrada Patalla
  double _ancho;
  double _alto;
  
  // Atributos de salida Contenedores
  double _wPadre;
  double _hPadre;
  double _wHijo;
  double _hHijo;

  // Metodos
  
  /* Constructor
   * @ param {double , double}
   * Inicializa las varibles
  */
  Tamano( double ancho, double alto):
    this._ancho = ancho,
    this._alto = alto,
    _wPadre = 0,
    _hPadre = 0,
    _wHijo = 0,
    _hHijo = 0;
    

  // Métodos o Funciones ----------------------
  
  /* Ancho pantalla
   * @get {ancho}
   */
  double get anchoPatalla {
    return this._ancho;
  }
  /* Alto de patalla
   * @get {alto} 
   **/
  double get altoPatalla {
    return this._alto;
  }

  // ---- Funciones que devuelven DOUBLE ----

  /* WIDTH del Obejeto padre
   * @params {porcentajeDeTamaño}
   * @return {_anchoDelPadre}
   * Procentaje x defecto es: 100% */
  double wObjeto([double percent = 1.0]){
    _wPadre = this._ancho * percent;
    return _wPadre; 
  }
  
  /* HEIGTH del Obejeto padre
   * @params {porcentajeDeTamaño}
   * @return {_anchoDelPadre}
   * Procentaje x defecto es: 100% */
  double hObjeto([double percent = 1.0]){
    _hPadre = this._alto * percent;
    return _hPadre; 
  }

  /* Width del Obejeto hijo
   * @params {porcentajeDeTamaño}
   * @return {_anchoDelPadre}
   * Procentaje x defecto es: 100% */ 
   double wChild([double percent = 1.0]){
    _wHijo = widObjet * percent;
    return _wHijo;
  }

  /* Heigth del Obejeto hijo
   * @params {porcentajeDeTamaño}
   * @return {_anchoDelPadre}
   * Procentaje x defecto es: 100% */
  double hChild([double percent = 1.0]){
    _hHijo = heiObjet * percent;
    return _hHijo;
  }
  
  // Métodos -----------------------------------
  
  // Gettes
  double get widObjet{
    return _wPadre;
  }
  
  double get heiObjet{
    return _hPadre;
  }
  
  double get widChild{
    return _wHijo;
  }
  
  double get heiChild{
    return _hHijo;
  }
  
  // Settes
  set widObjet(double precent){
    _wPadre = this._wPadre * precent;
  }
  set heiObjet(double precent){
    _hPadre = this._hPadre * precent;
  }
  
  set widChild(double percent){
    _wHijo = this._wPadre * percent;
  }

  set heiChild(double percent){
    _hHijo = this._hPadre * percent;
  }
}
