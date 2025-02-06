import { Button } from '@/app/components/ui/buttons/Button';
import { ClipboardIcon } from '@heroicons/react/16/solid';

function CopyTextButton({ text }: { text: string }) {
  return (
    <Button
      className={'h-[25px] p-1'}
      onClick={() => navigator.clipboard.writeText(text)}
    >
      <ClipboardIcon />
    </Button>
  );
}

export default CopyTextButton;
