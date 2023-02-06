readxl(pokemon.xlsx)

dim(x = pokemon)

colnames(x = pokemon)

str(pokemon)

pokemon$generation <- as.factor(x = pokemon$generation)
class(x = pokemon$generation )

pokemon$is_legendary <- as.factor(x = pokemon$is_legendary)
class(x = pokemon$is_legendary )

pokemon$type <- as.factor(x = pokemon$type)
class(x = pokemon$type )

length(levels(pokemon$generation))
length(levels(pokemon$is_legendary))
length(levels(pokemon$type))

summary(object = pokemon)