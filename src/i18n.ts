// Localization file.

import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import LanguageDetector from 'i18next-browser-languagedetector';

i18n
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    resources: {
      en: {
        translation: {
          resumeLink:
            'https://drive.google.com/uc?export=downloadandid=14JPBVKNYNMMUyRwi0fXM-LW-X7w0n4HI',

          aboutMeTitle: 'About Me',
          aboutMeFact1:
            'Frontend software engineer specializing in Flutter and React',
          aboutMeFact2:
            'BSc in Computer Science from the University of Lethbridge',
          aboutMeFact3: 'Living in Florianópolis, Brazil 🌴',
          aboutMeFact4:
            'Nascido no Canadá, meio-Canadiano 🍁 e meio-Brasileiro 🏖️',
          aboutMeFact5:
            '"An idiot admires complexity, a genius admires simplicity."',

          professionalExperienceTitle: 'Professional Experience',
          professionalExperienceDoutorIeJobTitle: 'Junior Flutter developer',
          professionalExperienceDoutorIeStartDate: 'November 2023',
          professionalExperienceDoutorIeEndDate: 'Present',

          contactInformationTitle: 'Contact Information',

          projectsTitle: 'Projects',
          projectsMyoroFlutterLibraryFact1: 'My Flutter launchpad',
          projectsMyoroFlutterLibraryFact2:
            'Handles all of the boilerplate when creating a new Flutter project',
          projectsMyoroFlutterLibraryFact3:
            'Included design scheme with colors, typography, and widgets',
          projectsMyoroFlutterLibraryFact4:
            'Takes care of: Widgets, common files (abstracts, enums, extensions, helpers, etc), and local SQLite initialization',
          projectsPortfolioTitle: 'My Portfolio',
          projectsPortfolioFact1: 'This website!',
          projectsPortfolioFact2: 'Tech stack: Vite, React, Tailwind, and shadcn',
          projectsPortfolioFact3: '100% code coverage threshold, fully tested, and fully setup CI/CD',
        },
      },
      pt: {
        translation: {
          resumeLink:
            'https://drive.google.com/uc?export=downloadandid=1FupfLoFd-2Fbp_vbF6YJ8aC9eKrJv8zS',

          aboutMeTitle: 'Sobre Mim',
          aboutMeFact1:
            'Desenvolvedor front-end especializando em Flutter e React',
          aboutMeFact2:
            'Curso superior em Ciências Informáticas pela Universidade de Lethbridge',
          aboutMeFact3: 'Morando em Florianópolis, Santa Catarina, Brasil 🌴',
          aboutMeFact4:
            'Nascido no Canadá, meio-Canadiano 🍁 e meio-Brasileiro 🏖️',
          aboutMeFact5:
            '"Um idiota admira a complexidade, um génio admira a simplicidade"',

          professionalExperienceTitle: 'Experiência Profissional',
          professionalExperienceDoutorIeJobTitle: '',
          professionalExperienceDoutorIeStartDate: 'Novembro 2023',
          professionalExperienceDoutorIeEndDate: 'Presente',

          contactInformationTitle: 'Informações de Contato',

          projectsTitle: 'Projetos',
          projectsMyoroFlutterLibraryFact1: 'Meu launchpad para Flutter',
          projectsMyoroFlutterLibraryFact2:
            'com todo o boilerplate de criar de um novo projeto em Flutter',
          projectsMyoroFlutterLibraryFact3:
            'Esquema de design incluído com cores, tipografia, e widgets',
          projectsMyoroFlutterLibraryFact4:
            'Contém: Widgets, arquivos commons (abstracts, enums, extensions, helpers, etc), and inicialização de um banco de dados em SQLite local',
          projectsPortfolioTitle: 'Meu Portfólio',
          projectsPortfolioFact1: 'Este site!',
          projectsPortfolioFact2: 'Tech stack: Vite, React, Tailwind, e shadcn',
          projectsPortfolioFact3: 'Code coverage limite de 100%, totalmente testado e CI/CD totalmente configurado',
        },
      },
    },
    fallbackLng: 'en',
    interpolation: {
      escapeValue: false,
    },
  });

export default i18n;
