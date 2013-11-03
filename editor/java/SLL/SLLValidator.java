package SLL;

import org.strategoxt.imp.runtime.dynamicloading.Descriptor;
import org.strategoxt.imp.runtime.services.MetaFileLanguageValidator;

public class SLLValidator extends MetaFileLanguageValidator {
	@Override
	public Descriptor getDescriptor() {
		return SLLParseController.getDescriptor();
	}
}