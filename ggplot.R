library(ggplot2)
library(palmerpenguins)


ggplot(data = penguins) +
       geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g))



ggplot(data = penguins) +
  geom_smooth(mapping =aes(x= flipper_length_mm, y=body_mass_g)) +
  geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g,linetype = species))


ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity))



ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  facet_wrap(~species)

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=color, fill=cut)) +
  facet_wrap(~cut)

ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper", subtitle = "Sample of three species"
       , caption = "Pedro Yuka") +
  annotate("text", x=220, y=3500, label="Gentoos are the largest", color="blue",
           fontface= "bold", size=3.5, angle=13)

t <- ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper", subtitle = "Sample of three species"
       , caption = "Pedro Yuka")

t + annotate("TEXT", x=220, y=3500, label="gentoo are the best")
