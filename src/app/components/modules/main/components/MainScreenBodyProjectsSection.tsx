import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import List from '@/app/components/ui/lists/List';
import { useTranslation } from 'react-i18next';

function MainScreenBodyProjectsSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('projectsTitle')}>
      <div className={'flex flex-col items-start gap-3'}>
        <Project
          name={'Myoro Flutter Library'}
          href={'https://github.com/antonkoetzler/myoro_flutter_library'}
          facts={[
            t('projectsMyoroFlutterLibraryFact1'),
            t('projectsMyoroFlutterLibraryFact2'),
            t('projectsMyoroFlutterLibraryFact3'),
            t('projectsMyoroFlutterLibraryFact4'),
          ]}
        />
        <Project
          name={t('projectsPortfolioTitle')}
          href={'https://github.com/antonkoetzler/antonkoetzler.github.io'}
          facts={[
            t('projectsPortfolioFact1'),
            t('projectsPortfolioFact2'),
            t('projectsPortfolioFact3'),
          ]}
        />
        <Project
          name={'MyoroAPI'}
          href={'https://github.com/antonkoetzler/myoro_api'}
          facts={[
            t('projectsMyoroApiFact1'),
            t('projectsMyoroApiFact2'),
          ]}
        />
        <Project
          name={t('projectsNvimConfigTitle')}
          href={'https://github.com/antonkoetzler/nvim-config'}
          facts={[
            t('projectsNvimConfigFact1'),
            t('projectsNvimConfigFact2'),
          ]}
        />
      </div>
    </MainScreenBodySection>
  );
}

interface ProjectProps {
  name: string;
  href: string;
  facts: string[];
}

function Project({
  name,
  href,
  facts,
}: ProjectProps) {
  return (
    <div className={'flex flex-col'}>
      <a
        href={href}
        target={'_blank'}
        rel={'noopener noreferrer'}
        className={'text-lg font-semibold text-blue-300 visited:text-purple-300'}
      >{name}</a>
      <List items={facts} />
    </div>
  );
}

export default MainScreenBodyProjectsSection;
