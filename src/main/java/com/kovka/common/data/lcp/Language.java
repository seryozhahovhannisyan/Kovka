package com.kovka.common.data.lcp;

import java.util.Locale;

public enum Language {

    RUSSIAN(1, "ru", "Russian", new Locale("ru")),
    ARMENIAN(2, "hy", "Armenian", new Locale("hy")),
    ENGLISH(3, "en", "English", Locale.ENGLISH);

    Language(final int value, final String key, final String title, final Locale locale) {
        this.value = value;
        this.key = key;
        this.title = title;
        this.locale = locale;
    }

    public static Language getDefault() {
        return RUSSIAN;
    }

    public static synchronized Language valueOf(final int value) {
        for (Language e : Language.values()) {
            if (e.value == value) {
                return e;
            }
        }
        return getDefault();
    }

    public static synchronized Language localeOf(Locale locale) {
        for (Language e : Language.values()) {
            if (e.locale == locale) {
                return e;
            }
        }
        return getDefault();
    }

    public static Language languageOf(final String language) {
        for (Language e : Language.values()) {
            if (e.locale.getLanguage().equalsIgnoreCase(language)) {
                return e;
            }
        }
        return getDefault();
    }

    public static Language keyOf(final String key) {
        for (Language e : Language.values()) {
            if (e.key.equalsIgnoreCase(key)) {
                return e;
            }
        }
        return getDefault();
    }

    private final int value;
    private final String key;
    private final String title;
    private final Locale locale;

    public int getValue() {
        return value;
    }

    public String getKey() {
        return key;
    }

    public String getTitle() {
        return title;
    }

    public Locale getLocale() {
        return locale;
    }
}
