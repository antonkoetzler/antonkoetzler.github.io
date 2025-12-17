// Localization file.

import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import LanguageDetector from 'i18next-browser-languagedetector';
import enTranslations from './locales/en.json';
import ptTranslations from './locales/pt.json';
import esTranslations from './locales/es.json';
import arTranslations from './locales/ar.json';
import deTranslations from './locales/de.json';
import frTranslations from './locales/fr.json';
import hiTranslations from './locales/hi.json';
import idTranslations from './locales/id.json';
import itTranslations from './locales/it.json';
import jaTranslations from './locales/ja.json';
import koTranslations from './locales/ko.json';
import nlTranslations from './locales/nl.json';
import plTranslations from './locales/pl.json';
import ruTranslations from './locales/ru.json';
import thTranslations from './locales/th.json';
import trTranslations from './locales/tr.json';
import viTranslations from './locales/vi.json';
import zhTranslations from './locales/zh.json';
import zhTWTranslations from './locales/zh_TW.json';

i18n
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    resources: {
      en: {
        translation: enTranslations,
      },
      pt: {
        translation: ptTranslations,
      },
      es: {
        translation: esTranslations,
      },
      ar: {
        translation: arTranslations,
      },
      de: {
        translation: deTranslations,
      },
      fr: {
        translation: frTranslations,
      },
      hi: {
        translation: hiTranslations,
      },
      id: {
        translation: idTranslations,
      },
      it: {
        translation: itTranslations,
      },
      ja: {
        translation: jaTranslations,
      },
      ko: {
        translation: koTranslations,
      },
      nl: {
        translation: nlTranslations,
      },
      pl: {
        translation: plTranslations,
      },
      ru: {
        translation: ruTranslations,
      },
      th: {
        translation: thTranslations,
      },
      tr: {
        translation: trTranslations,
      },
      vi: {
        translation: viTranslations,
      },
      zh: {
        translation: zhTranslations,
      },
      'zh-TW': {
        translation: zhTWTranslations,
      },
    },
    fallbackLng: 'en',
    interpolation: {
      escapeValue: false,
    },
  });

export default i18n;
