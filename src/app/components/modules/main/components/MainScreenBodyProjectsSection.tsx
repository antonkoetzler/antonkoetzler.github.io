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
          facts={[
            t('projectsMyoroFlutterLibraryFact1'),
            t('projectsMyoroFlutterLibraryFact2'),
            t('projectsMyoroFlutterLibraryFact3'),
            t('projectsMyoroFlutterLibraryFact4'),
          ]}
        />
        <Project
          name={t('projectsPortfolioTitle')}
          facts={[
            t('projectsPortfolioFact1'),
            t('projectsPortfolioFact2'),
            t('projectsPortfolioFact3'),
          ]}
        />
      </div>
    </MainScreenBodySection>
  );
}

function Project({ name, facts }: { name: string; facts: string[] }) {
  return (
    <div className={'flex flex-col'}>
      <p className={'text-lg font-semibold'}>{name}</p>
      <List items={facts} />
    </div>
  );
}

export default MainScreenBodyProjectsSection;
