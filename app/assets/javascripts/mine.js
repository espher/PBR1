

/*
(function($, W) {
	//Globales
	var $formSed1 = $("#sed1_form");
	var $formSed2 = $("#sed2_form");
	var $formSed3 = $("#sed3_form");

	var $idtextareaSed2 = $formSed2.find("textarea").length;
	var $idtextareaSed3 = $formSed3.find("textarea").length;

	//Forms
	$formSed1.validate({
		rules: {
			dependencia: "required",
			programa: "required",
			direccion: "required",
			responsable: "required",
			unidad: "required",
			email: "required",
			fechainicio: "required",
			fechafin: "required",
			nivel1: "required",
			definicion: "required",
		},
		messages: {
			dependencia: "Dependencia u Organizacion es necesaria",
			programa: "El Nombre del programa es necesario",
			direccion: "La Direccion o Subdireccion es necesaria",
			responsable: "El responsable es necesario",
			unidad: "Unidad responsable es necesaria",
			email: "El correo es necesario",
			fechainicio: "Fecha inicio es necesaria",
			fechafin: "Fecha fin es necesaria",
			nivel1: "Es necesario al menos un nivel",
			definicion: "La definicion del problema es necesaria",
		},
		submitHandler: function(form) {
			sendPost(1, $formSed1);
		}
	});

	$("#guardar_sed2_form").on('click', function() {
		sendPost(2, $formSed2)
	});
	$("#guardar_sed3_form").on('click', function() {
		sendPost(3, $formSed3)
	});

	//general
	var sendPost = function(sd, valueForm) {
		$.ajax({
			url: 'datos.php?case=sd' + sd,
			type: 'post',
			data: valueForm.serialize(),
			success: function(data) {
				data = $.trim(data);
				alert(data);
			}
		});
	}

	var nivel = {
		add: function() {
			$idtextareaSed1++;
			var htmlAdd = " <label class='dinamic'>Nivel " + $idtextareaSed1 + "</label><textarea class='input-xxlarge' id=nivel" + $idtextareaSed1 + " name=nivel" + $idtextareaSed1 + "></textarea>";
			$('#addsNiveles').after(htmlAdd);
			if ($idtextareaSed1 !== 1) {
				$("#removeNivel").prop("disabled", false);
			}
		},
		remove: function() {
			$idtextareaSed1--;
			if ($idtextareaSed1 === 1) {
				$("#removeNivel").prop("disabled", true);
			}
			$('#sed1_form textarea').first().remove();
			$('#sed1_form .dinamic').first().remove();
		},
		option: function() {
			var options = '<option value="">1</option>';
			return options;
		},
		tabcausa: function() {
			var $nonivel = $("#nonivel").val(),
				htmlAdd = '',
				htmlAdd2 = '',
				htmlAdd3 = "",
				htmlAdd4 = "";

			$nonivel = parseInt($nonivel) + 1;

			for (var i = 1; i < $nonivel; i++) {
				htmlAdd += '<li><a href="#tab_nivel_' + [i] + '" data-toggle="tab">Causas de nivel ' + [i] + '</a></li>';
				htmlAdd2 += '<div class="tab-pane fade" id="tab_nivel_' + [i] + '"><input type="button" value="Agregar causa" class="btn add_onclick"> <input type="button" value="Quitar causa" class="btn remove_onclick" disabled><br><br><div class="addContent"></div></div>';
			};

			$(htmlAdd).appendTo("#causa_nivel_tab");
			$(htmlAdd2).appendTo("#causa_nivel_tab_container");

			for (var i = 1; i < $nonivel; i++) {
				var tabNow = "#tab_nivel_" + i;
				if (i === 1) {
					htmlAdd3 = "<label class='dinamic'>Causa #1 </label><textarea class='input-xxlarge' id='textarea_" + [i] + "_1' name='causa_textarea_" + [i] + "_1'></textarea>";
					$(htmlAdd3).appendTo(tabNow);
				} else {
					htmlAdd4 = "<label class='dinamic'>Causa #1 - Ligada a la causa<select id='select_" + [i] + "_1' name='causa_select_" + [i] + "_1'></select> </label><textarea class='input-xxlarge' id='textarea_" + [i] + "_1' name='causa_textarea_" + [i] + "_1'></textarea>";
					$(htmlAdd4).appendTo(tabNow);
				}
			};
			options.causa();
			$("#aceptarNivel").prop("disabled", true);
		},
		tabefecto: function() {
			var $nonivel = $("#nonivelEfecto").val(),
				htmlAdd = '',
				htmlAdd2 = '',
				htmlAdd3 = "",
				htmlAdd4 = "";

			$nonivel = parseInt($nonivel) + 1;

			for (var i = 1; i < $nonivel; i++) {
				htmlAdd += '<li><a href="#efecto_tab_nivel_' + [i] + '" data-toggle="tab">Efectos de nivel ' + [i] + '</a></li>';
				htmlAdd2 += '<div class="tab-pane fade" id="efecto_tab_nivel_' + [i] + '"><input type="button" value="Agregar Efecto" class="btn efecto_add_onclick"> <input type="button" value="Quitar Efecto" class="btn efecto_remove_onclick" disabled><br><br><div class="efecto_addContent"></div></div>';
			};

			$(htmlAdd).appendTo("#efecto_nivel_tab");
			$(htmlAdd2).appendTo("#efecto_nivel_tab_container");

			for (var i = 1; i < $nonivel; i++) {
				var tabNow = "#efecto_tab_nivel_" + i;
				if (i === 1) {
					htmlAdd3 = "<label class='dinamic'>Efecto #1 </label><textarea class='input-xxlarge' id='efecto_textarea_" + [i] + "_1' name='efecto_textarea_" + [i] + "_1'></textarea>";
					$(htmlAdd3).appendTo(tabNow);
				} else {
					htmlAdd4 = "<label class='dinamic'>Efecto #1 - Ligada al efecto <select id='efecto_select_" + [i] + "_1' name='efecto_select_" + [i] + "_1'></select> </label><textarea class='input-xxlarge' id='efecto_textarea_" + [i] + "_1' name='efecto_textarea_" + [i] + "_1'></textarea>";
					$(htmlAdd4).appendTo(tabNow);
				}
			};
			options.efecto();
			$("#aceptarNivelEfecto").prop("disabled", true);
		},
		nuevo: function() {
			document.location.reload(true);
		}
	};

	var causa = {
		add: function() {
			var idCausa = this.parentNode.id,
				$nowTextarea = $('#' + idCausa).find("textarea").length,
				idNew = $nowTextarea++,
				htmlAdd = "",
				noTabNow = '';
			noTabNow = idCausa.split('_');
			noTabNow = parseInt(noTabNow[2]);

			if (noTabNow === 1) {
				htmlAdd = "<label class='dinamic'>Causa #" + $nowTextarea + "</label> <textarea class='input-xxlarge' id='" + $nowTextarea + "' name='causa_textarea_" + $nowTextarea + "_1'></textarea>";
			} else {
				htmlAdd = "<label class='dinamic'>Causa #" + $nowTextarea + " - Ligada a la causa<select id='select_" + idCausa + "_" + $nowTextarea + "' name='causa_select_" + idCausa + "_" + $nowTextarea + "'></select> </label> <textarea class='input-xxlarge' id='textarea_" + idCausa + "_" + $nowTextarea + "' name='causa_textarea_" + idCausa + "_" + $nowTextarea + "'></textarea>";
			}

			$('#' + idCausa + ' .addContent').after(htmlAdd);
			$nowTextarea = parseInt($nowTextarea);
			if ($nowTextarea > 0) {
				$(this)
					.closest('input[type=button]')
					.next()
					.prop("disabled", false);
			}
			options.causa();
		},
		remove: function() {
			var idCausa = this.parentNode.id,
				$nowTextarea = $('#' + idCausa).find("textarea").length;

			$('#' + idCausa + ' textarea').first().remove();
			$('#' + idCausa + ' label').first().remove();
			$nowTextarea = parseInt($nowTextarea);

			if ($nowTextarea === 2) {
				$(this)
					.closest('input[type=button]')
					.prop("disabled", true);
			}
			options.causa();
		}
	}

	var efecto = {
		add: function() {
			var idEfecto = this.parentNode.id,
				$nowTextarea = $('#' + idEfecto).find("textarea").length,
				idNew = $nowTextarea++,
				htmlAdd = "",
				noTabNow = '';
			noTabNow = idEfecto.split('_');
			noTabNow = parseInt(noTabNow[3]);

			if (noTabNow === 1) {
				htmlAdd = "<label class='dinamic'>Efecto #" + $nowTextarea + "</label> <textarea class='input-xxlarge' id='" + $nowTextarea + "' name='efecto_textarea_" + $nowTextarea + "_1'></textarea>";
			} else {
				htmlAdd = "<label class='dinamic'>Efecto #" + $nowTextarea + " - Ligada al efecto<select id='select_" + idEfecto + "_" + $nowTextarea + "' name='efecto_select_" + idEfecto + "_" + $nowTextarea + "'></select> </label> <textarea class='input-xxlarge' id='textarea_" + idEfecto + "_" + $nowTextarea + "' name='efecto_textarea_" + idEfecto + "_" + $nowTextarea + "'></textarea>";
			}

			$('#' + idEfecto + ' .efecto_addContent').after(htmlAdd);
			$nowTextarea = parseInt($nowTextarea);
			if ($nowTextarea > 0) {
				$(this)
					.closest('input[type=button]')
					.next()
					.prop("disabled", false);
			}
			options.efecto();
		},
		remove: function() {
			var idEfecto = this.parentNode.id,
				$nowTextarea = $('#' + idEfecto).find("textarea").length;

			$('#' + idEfecto + ' textarea').first().remove();
			$('#' + idEfecto + ' label').first().remove();
			$nowTextarea = parseInt($nowTextarea);

			if ($nowTextarea === 2) {
				$(this)
					.closest('input[type=button]')
					.prop("disabled", true);
			}
			options.efecto();
		}
	}

	var options = {
		causa: function() {
			var $nonivel = $("#nonivel").val(),
				$nowTextarea = '',
				addHtml = '';

			$nonivel = parseInt($nonivel) + 1;

			for (var i = 1; i < $nonivel; i++) {
				$nowTextarea = $("#tab_nivel_" + i).find("textarea").length;
				var newNowTextarea = $nowTextarea + 1;

				for (var b = newNowTextarea - 1; b >= 1; b--) {
					addHtml += '<option value="' + b + '"> Causa #' + b + ' nivel anterior</option>';
				};

				var newTabNivel = i + 1;
				$("#tab_nivel_" + newTabNivel + " select").empty();
				$("#tab_nivel_" + newTabNivel + " select").append(addHtml);
				addHtml = ''
			};
		},
		efecto: function() {
			var $nonivel = $("#nonivelEfecto").val(),
				$nowTextarea = '',
				addHtml = '';

			$nonivel = parseInt($nonivel) + 1;

			for (var i = 1; i < $nonivel; i++) {
				$nowTextarea = $("#efecto_tab_nivel_" + i).find("textarea").length;
				var newNowTextarea = $nowTextarea + 1;

				for (var b = newNowTextarea - 1; b >= 1; b--) {
					addHtml += '<option value="' + b + '"> Efecto #' + b + ' nivel anterior</option>';
				};

				var newTabNivel = i + 1;
				$("#efecto_tab_nivel_" + newTabNivel + " select").empty();
				$("#efecto_tab_nivel_" + newTabNivel + " select").append(addHtml);
				addHtml = ''
			};
		}
	}
	//Niveles general
	$("#addNivel").on('click', nivel.add);
	$("#removeNivel").on('click', nivel.remove);
	//tab causas
	$("#aceptarNivel").live('click', nivel.tabcausa);
	$("#nuevoNivel").live('click', nivel.nuevo);
	//botones causas
	$(".add_onclick").live('click', causa.add);
	$(".remove_onclick").live('click', causa.remove);
	//tab efectos
	$("#aceptarNivelEfecto").live('click', nivel.tabefecto);
	$("#nuevoNivelEfecto").live('click', nivel.nuevo);
	//botones efecto
	$(".efecto_add_onclick").live('click', efecto.add);
	$(".efecto_remove_onclick").live('click', efecto.remove);
})(jQuery, window);

(function() {

	arbol = {
		init : function() {			
			var color = "#2b659a";
			jsPlumb.importDefaults({			
				Connector : [ "Bezier", { curviness:80 } ],
				DragOptions : { cursor: "pointer", zIndex:2000 },
				PaintStyle : { strokeStyle:color, lineWidth:3 },
				EndpointStyle : { radius:0, fillStyle:color },
				HoverPaintStyle : {strokeStyle:"#22415e" },
				EndpointHoverStyle : {fillStyle:"#22415e" },			
				Anchors :  [ "BottomCenter", "TopCenter" ],
				Endpoints : [ [ "Dot", 7 ], [ "Dot", 11 ] ]
			});
				
		
			jsPlumb.connect({source:"window3", target:"window6" });
			jsPlumb.connect({source:"window1", target:"window2" });
			jsPlumb.connect({source:"window1", target:"window3" });
			jsPlumb.connect({source:"window2", target:"window4" });
			jsPlumb.connect({source:"window2", target:"window5" });
			
			jsPlumb.draggable(jsPlumb.getSelector(".window"));
		}
	};

	jsPlumb.bind("ready", function() {
		arbol.init();
	});
	
})();
*/