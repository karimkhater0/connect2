
class Player
{
  final int id;
  final String name, image;
  final Position position;
  final Nationality nationality;
  final List<String> clubs;
  final List<String> leagues;
  final List<Trophies> trophies;
  final List<Awards> awards;

  Player({
    required this.name, required this.image, required this.position,
    required this.nationality, required this.clubs, required this.leagues,
    required this.trophies, required this.awards,  this.id = 0
  });

  factory Player.fromMap(Map<String, dynamic> map) {
    return Player(
      id: map['id'],
      name: map['name'],
      image: map['image'],
      position: Position.values.byName(map['position']),
      nationality: Nationality.values.byName(map['nationality']),
      clubs: (map['clubs'] as String)
          .split(',').map((element) => element.trim()).toList(),

      leagues: (map['leagues'] as String)
          .split(',').map((element) => element.trim()).toList(),

      trophies: (map['trophies'] as String)
          .split(',').map((e) => Trophies.values.byName(e.trim())).toList(),

      awards: (map['awards'] as String)
          .split(',').map((e) => Awards.values.byName(e.trim())).toList(),
    );
  }
}
enum Trophies {
  premierLeague,
  laLiga,
  serieA,
  bundesliga,
  ligue1,
  championsLeague,
  europaLeague,
  conferenceLeague,
  worldCup,
  euro,
  copaAmerica,
  afcon,
  empty,
}

enum Awards
{
  goldenBoot, ballonDor, uefaPoty, empty,
}

enum Position
{
  gk, cb, rb, lb, cm, rw , lw, cf
}


enum Nationality {
  afghanistan, albania, algeria, andorra, angola, antiguaAndBarbuda,
  argentina, armenia, australia, austria, azerbaijan,

  bahamas, bahrain, bangladesh, barbados, belarus, belgium, belize, benin,
  bhutan, bolivia, bosnia, botswana, brazil, brunei, bulgaria,
  burkinaFaso, burundi,

  cambodia, cameroon, canada, capeVerde, centralAfricanRepublic, chad, chile,
  china, colombia, comoros, congo, congoDr, costaRica, croatia, cuba, cyprus,
  czechia,
  denmark, djibouti, dominica, dominicanRepublic,

  ecuador, egypt, elSalvador, england, equatorialGuinea, eritrea, estonia,
  eswatini, ethiopia,

  faroeIslands, fiji, finland, france,

  gabon, gambia, georgia, germany, ghana, greece, grenada, guatemala, guinea,
  guineaBissau, guyana,

  haiti, herzegovina, honduras, hungary,

  iceland, india, indonesia, iran, iraq, ireland, italy, ivoryCoast,

  jamaica, japan, jordan,

  kazakhstan, kenya, kiribati, koreaNorth, koreaSouth, kosovo, kuwait, kyrgyzstan,

  laos, latvia, lebanon, lesotho, liberia, libya, liechtenstein, lithuania, luxembourg,

  madagascar, malawi, malaysia, maldives, mali, malta, marshallIslands,
  mauritania, mauritius, mexico, micronesia, moldova, monaco, mongolia,
  montenegro, morocco, mozambique, myanmar,

  namibia, nauru, nepal, netherlands, newZealand, nicaragua, niger, nigeria,
  northMacedonia, norway,

  oman,

  pakistan, palau, palestine, panama, papuaNewGuinea, paraguay, peru,
  philippines, poland, portugal,

  qatar,

  romania, russia, rwanda,

  saintKittsAndNevis, saintLucia, saintVincentAndGrenadines, samoa,
  sanMarino, saoTomeAndPrincipe, saudiArabia, scotland, senegal, serbia,
  seychelles, sierraLeone, singapore, slovakia, slovenia, solomonIslands,
  somalia, southAfrica, southSudan, spain, sriLanka, sudan, suriname, sweden,
  switzerland, syria,

  taiwan, tajikistan, tanzania, thailand, timorLeste, togo, tonga,
  trinidadAndTobago, tunisia, turkey, turkmenistan, tuvalu,

  uganda, ukraine, unitedArabEmirates, unitedStates, uruguay, uzbekistan,

  vanuatu, venezuela, vietnam,

  wales,
  yemen,
  zambia, zimbabwe
}







