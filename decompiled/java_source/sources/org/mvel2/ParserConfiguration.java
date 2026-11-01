package org.mvel2;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.mvel2.ast.Proto;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.util.MethodStub;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class ParserConfiguration implements Serializable {
    protected transient ClassLoader classLoader;
    protected Map<String, k10.b> interceptors;
    protected HashSet<String> packageImports;
    protected final Map<String, Object> imports = new ConcurrentHashMap();
    private final transient Set<String> nonValidImports = Collections.newSetFromMap(new ConcurrentHashMap());
    private boolean allowNakedMethCall = d.f71967g;
    private boolean allowBootstrapBypass = true;

    public ParserConfiguration() {
    }

    public ParserConfiguration(Map<String, Object> map, HashSet<String> hashSet, Map<String, k10.b> map2) {
        addAllImports(map);
        this.packageImports = hashSet;
        this.interceptors = map2;
    }

    public ParserConfiguration(Map<String, Object> map, Map<String, k10.b> map2) {
        addAllImports(map);
        this.interceptors = map2;
    }

    private boolean addClassMemberStaticImports(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (cls.isEnum()) {
                for (Enum r11 : EnumSet.allOf(cls)) {
                    this.imports.put(r11.name(), r11);
                }
                return true;
            }
            for (Field field : cls.getDeclaredFields()) {
                if ((field.getModifiers() & 9) == 9) {
                    this.imports.put(field.getName(), field.get(null));
                }
            }
            return false;
        } catch (ClassNotFoundException unused) {
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("error adding static imports for: " + str, e11);
        }
    }

    private void cacheNegativeHitForDynamicImport(String str) {
        this.nonValidImports.add(str);
    }

    private boolean checkForDynamicImport(String str) {
        if (this.packageImports == null || !Character.isJavaIdentifierStart(str.charAt(0)) || this.nonValidImports.contains(str)) {
            return false;
        }
        Iterator<String> it = this.packageImports.iterator();
        Class clsH = null;
        int i11 = 0;
        while (it.hasNext()) {
            try {
                clsH = m.H(it.next() + "." + str, getClassLoader());
                i11++;
            } catch (Throwable unused) {
            }
        }
        if (i11 > 1) {
            throw new RuntimeException("ambiguous class name: " + str);
        }
        if (i11 == 1) {
            addImport(str, clsH);
            return true;
        }
        cacheNegativeHitForDynamicImport(str);
        return false;
    }

    public void addAllImports(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Method) {
                this.imports.put(entry.getKey(), new MethodStub((Method) value));
            } else {
                this.imports.put(entry.getKey(), value);
            }
        }
    }

    public void addImport(Class cls) {
        addImport(cls.getSimpleName(), cls);
    }

    public void addImport(String str, Class cls) {
        this.imports.put(str, cls);
    }

    public void addImport(String str, Method method) {
        addImport(str, new MethodStub(method));
    }

    public void addImport(String str, Proto proto) {
        this.imports.put(str, proto);
    }

    public void addImport(String str, MethodStub methodStub) {
        this.imports.put(str, methodStub);
    }

    public void addPackageImport(String str) {
        if (this.packageImports == null) {
            this.packageImports = new LinkedHashSet();
        }
        this.packageImports.add(str);
        if (addClassMemberStaticImports(str)) {
            return;
        }
        this.packageImports.add(str);
    }

    public void flushCaches() {
        this.nonValidImports.clear();
    }

    public ClassLoader getClassLoader() {
        ClassLoader classLoader = this.classLoader;
        if (classLoader != null) {
            return classLoader;
        }
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        this.classLoader = contextClassLoader;
        return contextClassLoader;
    }

    public Class getImport(String str) {
        if (this.imports.containsKey(str) && (this.imports.get(str) instanceof Class)) {
            return (Class) this.imports.get(str);
        }
        return (Class) (AbstractParser.LITERALS.get(str) instanceof Class ? AbstractParser.LITERALS.get(str) : null);
    }

    public Map<String, Object> getImports() {
        return this.imports;
    }

    public Map<String, k10.b> getInterceptors() {
        return this.interceptors;
    }

    public HashSet<String> getPackageImports() {
        return this.packageImports;
    }

    public MethodStub getStaticImport(String str) {
        return (MethodStub) this.imports.get(str);
    }

    public Object getStaticOrClassImport(String str) {
        return this.imports.containsKey(str) ? this.imports.get(str) : AbstractParser.LITERALS.get(str);
    }

    public boolean hasImport(String str) {
        return this.imports.containsKey(str) || AbstractParser.CLASS_LITERALS.containsKey(str) || checkForDynamicImport(str);
    }

    public boolean hasImports() {
        HashSet<String> hashSet;
        return (this.imports.isEmpty() && ((hashSet = this.packageImports) == null || hashSet.size() == 0)) ? false : true;
    }

    public boolean isAllowBootstrapBypass() {
        return this.allowBootstrapBypass;
    }

    public boolean isAllowNakedMethCall() {
        return this.allowNakedMethCall;
    }

    public void setAllImports(Map<String, Object> map) {
        this.imports.clear();
        if (map != null) {
            this.imports.putAll(map);
        }
    }

    public void setAllowBootstrapBypass(boolean z10) {
        this.allowBootstrapBypass = z10;
    }

    public void setAllowNakedMethCall(boolean z10) {
        this.allowNakedMethCall = z10;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.classLoader = classLoader;
    }

    public void setImports(HashMap<String, Object> map) {
        setAllImports(map);
    }

    public void setImports(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Class) {
                addImport(entry.getKey(), (Class) value);
            } else if (value instanceof Method) {
                addImport(entry.getKey(), (Method) value);
            } else if (value instanceof MethodStub) {
                addImport(entry.getKey(), (MethodStub) value);
            } else {
                if (!(value instanceof Proto)) {
                    throw new RuntimeException("invalid element in imports map: " + entry.getKey() + " (" + value + ")");
                }
                addImport(entry.getKey(), (Proto) entry.getValue());
            }
        }
    }

    public void setInterceptors(Map<String, k10.b> map) {
        this.interceptors = map;
    }

    public void setPackageImports(HashSet<String> hashSet) {
        this.packageImports = hashSet;
    }
}
