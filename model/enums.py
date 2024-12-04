from enum import Enum

class TipoDestino(Enum):
    QUENTE = "Quente"
    FRIO = "Frio"
    CULTURAL = "Cultural"
    NATUREZA = "Natureza"
    AVENTURA = "Aventura"

class NivelViagem(Enum):
    SIMPLES = "Simples"
    LUXO = "Luxo"
    SUPER_LUXO = "Super Luxo"

class MesViagem(Enum):
    JANEIRO = "Janeiro"
    FEVEREIRO = "Fevereiro"
    MARCO = "Março"
    ABRIL = "Abril"
    MAIO = "Maio"
    JUNHO = "Junho"
    JULHO = "Julho"
    AGOSTO = "Agosto"
    SETEMBRO = "Setembro"
    OUTUBRO = "Outubro"
    NOVEMBRO = "Novembro"
    DEZEMBRO = "Dezembro"
