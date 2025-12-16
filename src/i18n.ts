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
          // ########## About me ##########
          aboutMeTitle: 'About Me',
          aboutMeFact1:
            'Frontend software engineer specializing in Flutter and React',
          aboutMeFact2:
            'BSc in Computer Science from the University of Lethbridge',
          aboutMeFact3: 'Living in Florianópolis, Brazil 🌴',
          aboutMeFact4: 'Born in Canada 🍁 and also half-Brazilian 🏖️',
          aboutMeFact5: 'Native English speaker and fluent in Portuguese',
          aboutMeFact6:
            '"An idiot admires complexity, a genius admires simplicity."',
          // ###############################

          // ########## Professional experience ##########
          // Title
          professionalExperienceTitle: 'Professional Experience',

          // Doutor-IE
          professionalExperienceDoutorIeCompany: 'Doutor-IE',
          professionalExperienceDoutorIeJobTitle: 'Junior Flutter Developer',
          professionalExperienceDoutorIeStartDate: 'November 2023',
          professionalExperienceDoutorIeEndDate: 'April 2025',

          // Prolog App
          professionalExperiencePrologAppCompany: 'Prolog App',
          professionalExperiencePrologAppJobTitle:
            'Mid-Level Flutter Developer',
          professionalExperiencePrologAppStartDate: 'April 2025',
          professionalExperiencePrologAppEndDate: 'November 2025',

          // Olly Olly
          professionalExperienceOllyOllyCompany: 'Olly Olly',
          professionalExperienceOllyOllyJobTitle: 'Senior Flutter Developer',
          professionalExperienceOllyOllyStartDate: 'May 2025',
          professionalExperienceOllyOllyEndDate: 'Present',
          // #############################################

          // ########## Contact information ##########
          contactInformationTitle: 'Contact Information',
          // #########################################

          // ########## Tech sections ##########
          devStackTitle: 'Dev Stack',
          techStackTitle: 'Tech Stack',
          languagesTitle: 'Languages',
          // #################################

          // ########## Projects ##########
          projectsTitle: 'Projects',

          // MyoroMatchup
          projectsMyoroMatchupTitle: 'Myoro Matchup',
          projectsMyoroMatchupFact1:
            'App to gather friends to play organized sports',
          projectsMyoroMatchupFact2:
            'Manages players, payment tracking, details, and more',
          projectsMyoroMatchupFact3:
            'Check it out on the Play Store or App Store',

          // MyoroFlutterLibrary
          projectsMyoroFlutterLibraryTitle: 'Myoro Flutter Library',
          projectsMyoroFlutterLibraryFact1: 'My Flutter launchpad',
          projectsMyoroFlutterLibraryFact2:
            'Handles all of the boilerplate when creating a new Flutter project',
          projectsMyoroFlutterLibraryFact3:
            'Included design scheme with colors, typography, and widgets',
          projectsMyoroFlutterLibraryFact4:
            'Takes care of: Widgets, common files (abstracts, enums, extensions, helpers, etc), and local SQLite initialization',

          // nvim-config
          projectsNvimConfigTitle: 'My Neovim Configuration',
          projectsNvimConfigFact1:
            'Modular Neovim configuration fully kitted for my needs',
          projectsNvimConfigFact2: 'Will make you quit using VSCode 😎',

          // vscode-config
          projectsVscodeConfigTitle: 'My VSCode Configuration',
          projectsVscodeConfigFact1:
            'Also my VSCode configuration if you want to take a look at it',

          // antonkoetzler.github.io (portfolio)
          projectsPortfolioTitle: 'My Portfolio',
          projectsPortfolioFact1: 'This website!',
          // ##############################
        },
      },
      pt: {
        translation: {
          // ########## Sobre mim ##########
          aboutMeTitle: 'Sobre Mim',
          aboutMeFact1:
            'Desenvolvedor front-end especializando em Flutter e React',
          aboutMeFact2:
            'Curso superior em Ciências Informáticas pela Universidade de Lethbridge',
          aboutMeFact3: 'Morando em Florianópolis, Santa Catarina, Brasil 🌴',
          aboutMeFact4: 'Nascido no Canadá 🍁 e também metade Brasileiro 🏖️',
          aboutMeFact5: 'Falante nativo de inglês e fluente em português',
          aboutMeFact6:
            '"Um idiota admira a complexidade, um génio admira a simplicidade"',
          // ###############################

          // ########## Experiência profissional ##########
          // Título
          professionalExperienceTitle: 'Experiência Profissional',

          // Doutor-IE
          professionalExperienceDoutorIeCompany: 'Doutor-IE',
          professionalExperienceDoutorIeJobTitle:
            'Desenvolvedor Flutter Júnior',
          professionalExperienceDoutorIeStartDate: 'Novembro 2023',
          professionalExperienceDoutorIeEndDate: 'Abril 2025',

          // Prolog App
          professionalExperiencePrologAppCompany: 'Prolog App',
          professionalExperiencePrologAppJobTitle:
            'Desenvolvedor Flutter Pleno',
          professionalExperiencePrologAppStartDate: 'Abril 2025',
          professionalExperiencePrologAppEndDate: 'Novembro 2025',

          // Olly Olly
          professionalExperienceOllyOllyCompany: 'Olly Olly',
          professionalExperienceOllyOllyJobTitle:
            'Desenvolvedor Flutter Sênior',
          professionalExperienceOllyOllyStartDate: 'Maio 2025',
          professionalExperienceOllyOllyEndDate: 'Presente',
          // ##############################################

          // ########## Informações de contato ##########
          contactInformationTitle: 'Informações de Contato',
          // ############################################

          // ########## Seções de tecnologia ##########
          devStackTitle: 'Stack de Desenvolvimento',
          techStackTitle: 'Stack Tecnológico',
          languagesTitle: 'Linguagens',
          // ###########################################

          // ########## Projetos ##########
          projectsTitle: 'Projetos',

          // MyoroMatchup
          projectsMyoroMatchupTitle: 'Myoro Matchup',
          projectsMyoroMatchupFact1:
            'App para reunir amigos para praticar esportes organizados',
          projectsMyoroMatchupFact2:
            'Gerencia jogadores, rastreamento de pagamentos, detalhes e mais',
          projectsMyoroMatchupFact3: 'Confira na Play Store ou App Store',

          // MyoroFlutterLibrary
          projectsMyoroFlutterLibraryTitle: 'Myoro Flutter Library',
          projectsMyoroFlutterLibraryFact1: 'Meu launchpad para Flutter',
          projectsMyoroFlutterLibraryFact2:
            'com todo o boilerplate de criar de um novo projeto em Flutter',
          projectsMyoroFlutterLibraryFact3:
            'Esquema de design incluído com cores, tipografia, e widgets',
          projectsMyoroFlutterLibraryFact4:
            'Contém: Widgets, arquivos commons (abstracts, enums, extensions, helpers, etc), and inicialização de um banco de dados em SQLite local',

          // nvim-config
          projectsNvimConfigTitle: 'Minha configuração de Neovim',
          projectsNvimConfigFact1:
            'Configuração modular Neovim totalmente equipada para minhas necessidades',
          projectsNvimConfigFact2: 'Vai fazer você parar de usar o VSCode 😎',

          // vscode-config
          projectsVscodeConfigTitle: 'Minha Configuração do VSCode',
          projectsVscodeConfigFact1:
            'Também minha configuração do VSCode se quiser dar uma olhada',

          // antonkoetzler.github.io (portfolio)
          projectsPortfolioTitle: 'Meu Portfólio',
          projectsPortfolioFact1: 'Este site!',
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
