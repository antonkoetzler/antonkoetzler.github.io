import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import { Button } from '@/app/components/ui/buttons/Button';
import { useTranslation } from 'react-i18next';

function MainScreenBodyNotionSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('notionTitle')}>
      <div className={'flex flex-row gap-4'}>
        <Button asChild variant={'outline'}>
          <a
            target={'_blank'}
            rel={'noopener noreferrer'}
            href={
              'https://tough-shoemaker-cbd.notion.site/Myoro-2b5d7dcd552480df9b9aef40d0682c05'
            }
          >
            {t('myoroNotionPage')}
          </a>
        </Button>
        <Button asChild variant={'outline'}>
          <a
            target={'_blank'}
            rel={'noopener noreferrer'}
            href={
              'https://tough-shoemaker-cbd.notion.site/Anton-s-Flutter-Bible-2b5d7dcd55248087bf5cd89888eca59e'
            }
          >
            {t('antonsFlutterBibleNotionPage')}
          </a>
        </Button>
        <Button asChild variant={'outline'}>
          <a
            target={'_blank'}
            rel={'noopener noreferrer'}
            href={
              'https://tough-shoemaker-cbd.notion.site/2XKO-2b5d7dcd5524801c8a02f137885b8ea1'
            }
          >
            {t('2xkoNotionPage')}
          </a>
        </Button>
      </div>
    </MainScreenBodySection>
  );
}

export default MainScreenBodyNotionSection;
