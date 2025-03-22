import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import CopyTextButton from '@/app/components/ui/buttons/CopyTextButton';
import { useTranslation } from 'react-i18next';

function MainScreenBodyContactInformationSection() {
  const { t } = useTranslation();
  const email = 'antonkoetzler-faust@hotmail.com';

  return (
    <MainScreenBodySection title={t('contactInformationTitle')}>
      <div className={'flex flex-col gap-2'}>
        <ContactInformation
          formOfContactAddress={email}
          onPressFormOfContactAddress={`mailto:${email}`}
        />
        <ContactInformation
          formOfContactAddress={'+55 (48) 98818-9095'}
          onPressFormOfContactAddress={'https://wa.me/5548988189095'}
        />
      </div>
    </MainScreenBodySection>
  );
}

function ContactInformation({
  formOfContactAddress,
  onPressFormOfContactAddress,
}: {
  formOfContactAddress: string;
  onPressFormOfContactAddress: string;
}) {
  return (
    <div className={'flex flex-row gap-2'}>
      <a
        className={'w-full text-center text-blue-400'}
        target={'_blank'}
        rel={'noopener noreferrer'}
        href={onPressFormOfContactAddress}
      >
        {formOfContactAddress}
      </a>
      <CopyTextButton text={formOfContactAddress} />
    </div>
  );
}

export default MainScreenBodyContactInformationSection;
