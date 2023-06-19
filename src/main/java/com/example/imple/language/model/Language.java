package com.example.imple.language.model;

import jakarta.annotation.Nonnull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class Language {
	@Nonnull String countryCode;
	@Nonnull String language;
	//TF isOfficial;
	Double percentage;
	
}
