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
          // ########## Résumé ##########
          resumeLink:
            'https://drive.google.com/uc?export=download&id=14JPBVKNYNMMUyRwi0fXM-LW-X7w0n4HI',
          // ############################

          // ########## About me ##########
          aboutMeTitle: 'About Me',
          aboutMeFact1:
            'Frontend software engineer specializing in Flutter and React',
          aboutMeFact2:
            'BSc in Computer Science from the University of Lethbridge',
          aboutMeFact3: 'Living in Florianópolis, Brazil 🌴',
          aboutMeFact4:
            'Born in Canada 🍁 and also half-Brazilian 🏖️',
          aboutMeFact5:
            '"An idiot admires complexity, a genius admires simplicity."',
          // ###############################

          // ########## Professional experience ##########
          professionalExperienceTitle: 'Professional Experience',
          professionalExperienceDoutorIeJobTitle: 'Junior Flutter developer',
          professionalExperienceDoutorIeStartDate: 'November 2023',
          professionalExperienceDoutorIeEndDate: 'Present',
          // #############################################

          // ########## Contact information ##########
          contactInformationTitle: 'Contact Information',
          // #########################################

          // ########## Projects ##########
          projectsTitle: 'Projects',

          // MyoroFlutterLibrary
          projectsMyoroFlutterLibraryFact1: 'My Flutter launchpad',
          projectsMyoroFlutterLibraryFact2:
            'Handles all of the boilerplate when creating a new Flutter project',
          projectsMyoroFlutterLibraryFact3:
            'Included design scheme with colors, typography, and widgets',
          projectsMyoroFlutterLibraryFact4:
            'Takes care of: Widgets, common files (abstracts, enums, extensions, helpers, etc), and local SQLite initialization',

          // MyoroAPI
          projectsMyoroApiFact1: 'Implemented with Laravel',
          projectsMyoroApiFact2: 'Parent database for my applications to store shared data such as users',

          // nvim-config
          projectsNvimConfigTitle: 'My Neovim Configuration',
          projectsNvimConfigFact1: 'Modular Neovim configuration fully kitted for my needs',
          projectsNvimConfigFact2: 'Will make you quit using VSCode 😎',

          // antonkoetzler.github.io (portfolio)
          projectsPortfolioTitle: 'My Portfolio',
          projectsPortfolioFact1: 'This website!',
          projectsPortfolioFact2: 'Tech stack: Vite, React, Tailwind, and shadcn',
          // ##############################
        },
      },
      pt: {
        translation: {
          // ########## Currículo ##########
          resumeLink:
            'https://drive.google.com/uc?export=download&id=1FupfLoFd-2Fbp_vbF6YJ8aC9eKrJv8zS',
          // ###############################

          // ########## Sobre mim ##########
          aboutMeTitle: 'Sobre Mim',
          aboutMeFact1:
            'Desenvolvedor front-end especializando em Flutter e React',
          aboutMeFact2:
            'Curso superior em Ciências Informáticas pela Universidade de Lethbridge',
          aboutMeFact3: 'Morando em Florianópolis, Santa Catarina, Brasil 🌴',
          aboutMeFact4:
            'Nascido no Canadá 🍁 e também metade Brasileiro 🏖️',
          aboutMeFact5:
            '"Um idiota admira a complexidade, um génio admira a simplicidade"',
          // ###############################

          // ########## Experiência profissional ##########
          professionalExperienceTitle: 'Experiência Profissional',
          professionalExperienceDoutorIeJobTitle: '',
          professionalExperienceDoutorIeStartDate: 'Novembro 2023',
          professionalExperienceDoutorIeEndDate: 'Presente',
          // ##############################################

          // ########## Informações de contato ##########
          contactInformationTitle: 'Informações de Contato',
          // ############################################

          // ########## Projetos ##########
          projectsTitle: 'Projetos',

          // MyoroFlutterLibrary
          projectsMyoroFlutterLibraryFact1: 'Meu launchpad para Flutter',
          projectsMyoroFlutterLibraryFact2:
            'com todo o boilerplate de criar de um novo projeto em Flutter',
          projectsMyoroFlutterLibraryFact3:
            'Esquema de design incluído com cores, tipografia, e widgets',
          projectsMyoroFlutterLibraryFact4:
            'Contém: Widgets, arquivos commons (abstracts, enums, extensions, helpers, etc), and inicialização de um banco de dados em SQLite local',

          // MyoroAPI
          projectsMyoroApiFact1: 'Implementado com Laravel',
          projectsMyoroApiFact2: 'Banco de dados pai para meus aplicativos armazenarem dados compartilhados, como dados de usuários',

          // nvim-config
          projectsNvimConfigTitle: 'Minha configuração de Neovim',
          projectsNvimConfigFact1: 'Configuração modular Neovim totalmente equipada para minhas necessidades',
          projectsNvimConfigFact2: 'Vai fazer você parar de usar o VSCode 😎',

          // antonkoetzler.github.io (portfolio)
          projectsPortfolioTitle: 'Meu Portfólio',
          projectsPortfolioFact1: 'Este site!',
          projectsPortfolioFact2: 'Tech stack: Vite, React, Tailwind, e shadcn',
          // ##############################
        },
      },
    },
    fallbackLng: 'en',
    interpolation: {
      escapeValue: false,
    },
  });

export default i18n;
