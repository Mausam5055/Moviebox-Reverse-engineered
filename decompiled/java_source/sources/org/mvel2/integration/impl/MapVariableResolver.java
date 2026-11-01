package org.mvel2.integration.impl;

import java.util.Map;
import org.mvel2.b;
import org.mvel2.integration.VariableResolver;

/* JADX INFO: loaded from: classes7.dex */
public class MapVariableResolver implements VariableResolver {
    private Class<?> knownType;
    private String name;
    private Map<String, Object> variableMap;

    public MapVariableResolver(Map<String, Object> map, String str) {
        this.variableMap = map;
        this.name = str;
    }

    public MapVariableResolver(Map<String, Object> map, String str, Class cls) {
        this.name = str;
        this.knownType = cls;
        this.variableMap = map;
    }

    @Override // org.mvel2.integration.VariableResolver
    public int getFlags() {
        return 0;
    }

    @Override // org.mvel2.integration.VariableResolver
    public String getName() {
        return this.name;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Class getType() {
        return this.knownType;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Object getValue() {
        return this.variableMap.get(this.name);
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setStaticType(Class cls) {
        this.knownType = cls;
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setValue(Object obj) {
        if (this.knownType != null && obj != null) {
            Class<?> cls = obj.getClass();
            Class<?> cls2 = this.knownType;
            if (cls != cls2) {
                if (!b.a(cls2, obj.getClass())) {
                    throw new RuntimeException("cannot assign " + obj.getClass().getName() + " to type: " + this.knownType.getName());
                }
                try {
                    obj = b.b(obj, this.knownType);
                } catch (Exception unused) {
                    throw new RuntimeException("cannot convert value of " + obj.getClass().getName() + " to: " + this.knownType.getName());
                }
            }
        }
        this.variableMap.put(this.name, obj);
    }

    public void setVariableMap(Map<String, Object> map) {
        this.variableMap = map;
    }
}
