package k10;

import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class e {
    public static VariableResolverFactory a(VariableResolverFactory variableResolverFactory, VariableResolverFactory variableResolverFactory2) {
        if (variableResolverFactory.getNextFactory() == null) {
            variableResolverFactory.setNextFactory(variableResolverFactory2);
        } else {
            while (variableResolverFactory.getNextFactory() != null) {
                variableResolverFactory = variableResolverFactory.getNextFactory();
            }
            variableResolverFactory.setNextFactory(variableResolverFactory2);
        }
        return variableResolverFactory2;
    }
}
