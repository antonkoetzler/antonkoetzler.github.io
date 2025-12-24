import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import List from '@/app/components/ui/lists/List';
import { useTranslation } from 'react-i18next';
import ImageStore, { Image } from '@/app/stores/image-store';

function MainScreenBodyProjectsSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('projectsTitle')}>
      <div className={'flex flex-col items-start gap-3'}>
        <Project
          name={t('projectsMyoroMatchupTitle')}
          href={'https://github.com/antonkoetzler/myoro_matchup'}
          techstackImages={[
            ImageStore.dart,
            ImageStore.flutter,
            ImageStore.postgres,
            ImageStore.supabase,
          ]}
          facts={[
            t('projectsMyoroMatchupFact1'),
            t('projectsMyoroMatchupFact2'),
            t('projectsMyoroMatchupFact3'),
          ]}
        />
        <Project
          name={t('projectsMyoroFlutterLibraryTitle')}
          href={'https://github.com/antonkoetzler/myoro_flutter_library'}
          techstackImages={[
            ImageStore.dart,
            ImageStore.flutter,
            ImageStore.sqlite,
          ]}
          facts={[
            t('projectsMyoroFlutterLibraryFact1'),
            t('projectsMyoroFlutterLibraryFact2'),
            t('projectsMyoroFlutterLibraryFact3'),
            t('projectsMyoroFlutterLibraryFact4'),
          ]}
        />
        <Project
          name={t('projectsNvimConfigTitle')}
          href={'https://github.com/antonkoetzler/nvim-config'}
          techstackImages={[ImageStore.neovim, ImageStore.lua]}
          techstackImagesGap={10}
          facts={[t('projectsNvimConfigFact1'), t('projectsNvimConfigFact2')]}
        />
        <Project
          name={t('projectsVscodeConfigTitle')}
          href={'https://github.com/antonkoetzler/vscode-config'}
          techstackImages={[ImageStore.vscode, ImageStore.json]}
          facts={[t('projectsVscodeConfigFact1')]}
        />
        <Project
          name={t('projectsPortfolioTitle')}
          href={'https://github.com/antonkoetzler/antonkoetzler.github.io'}
          techstackImages={[
            ImageStore.typescript,
            ImageStore.bun,
            ImageStore.react,
            ImageStore.tailwind,
            ImageStore.shadcn,
            ImageStore.vite,
          ]}
          facts={[t('projectsPortfolioFact1')]}
        />
      </div>
    </MainScreenBodySection>
  );
}

interface ProjectProps {
  name: string;
  href: string;
  techstackImages: Image[];
  techstackImagesGap?: number;
  facts: string[];
}

function Project({
  name,
  href,
  techstackImages,
  techstackImagesGap,
  facts,
}: ProjectProps) {
  const techstackIconSize = 32;

  return (
    <div className={'flex w-full flex-col gap-2'}>
      <a
        href={href}
        target={'_blank'}
        rel={'noopener noreferrer'}
        className={
          'text-[20px] font-semibold text-blue-300 visited:text-purple-300'
        }
      >
        {name}
      </a>
      <div
        className={`flex flex-row flex-wrap`}
        style={{ gap: techstackImagesGap ?? 5 }}
      >
        {techstackImages.map((image, index) => (
          <img
            key={index}
            src={image.src}
            alt={image.alt}
            title={image.alt}
            width={techstackIconSize}
            height={techstackIconSize}
            className={'object-contain'}
          />
        ))}
      </div>
      <List items={facts} />
    </div>
  );
}

export default MainScreenBodyProjectsSection;
