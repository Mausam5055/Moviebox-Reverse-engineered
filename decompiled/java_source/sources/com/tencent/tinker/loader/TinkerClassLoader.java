package com.tencent.tinker.loader;

import android.annotation.SuppressLint;
import com.tencent.tinker.anno.Keep;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"NewApi"})
@Keep
public final class TinkerClassLoader extends PathClassLoader {
    private final ClassLoader mOriginAppClassLoader;

    @Keep
    class CompoundEnumeration<E> implements Enumeration<E> {
        private Enumeration<E>[] enums;
        private int index = 0;

        public CompoundEnumeration(Enumeration<E>[] enumerationArr) {
            this.enums = enumerationArr;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            while (true) {
                int i11 = this.index;
                Enumeration<E>[] enumerationArr = this.enums;
                if (i11 >= enumerationArr.length) {
                    return false;
                }
                Enumeration<E> enumeration = enumerationArr[i11];
                if (enumeration != null && enumeration.hasMoreElements()) {
                    return true;
                }
                this.index++;
            }
        }

        @Override // java.util.Enumeration
        public E nextElement() {
            if (hasMoreElements()) {
                return this.enums[this.index].nextElement();
            }
            throw new NoSuchElementException();
        }
    }

    TinkerClassLoader(String str, File file, String str2, ClassLoader classLoader) {
        super("", str2, ClassLoader.getSystemClassLoader());
        this.mOriginAppClassLoader = classLoader;
        injectDexPath(this, str, file);
    }

    private static void injectDexPath(ClassLoader classLoader, String str, File file) {
        try {
            ArrayList arrayList = new ArrayList(16);
            for (String str2 : str.split(":")) {
                if (!str2.isEmpty()) {
                    arrayList.add(new File(str2));
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            SystemClassLoaderAdder.injectDexesInternal(classLoader, arrayList, file);
        } catch (Throwable th2) {
            throw new TinkerRuntimeException("Fail to create TinkerClassLoader.", th2);
        }
    }

    @Override // dalvik.system.BaseDexClassLoader, java.lang.ClassLoader
    protected Class<?> findClass(String str) throws ClassNotFoundException {
        Class<?> clsFindClass;
        try {
            clsFindClass = super.findClass(str);
        } catch (ClassNotFoundException unused) {
            clsFindClass = null;
        }
        return clsFindClass != null ? clsFindClass : this.mOriginAppClassLoader.loadClass(str);
    }

    @Override // java.lang.ClassLoader
    public URL getResource(String str) {
        URL resource = Object.class.getClassLoader().getResource(str);
        if (resource != null) {
            return resource;
        }
        URL urlFindResource = findResource(str);
        return urlFindResource != null ? urlFindResource : this.mOriginAppClassLoader.getResource(str);
    }

    @Override // java.lang.ClassLoader
    public Enumeration<URL> getResources(String str) throws IOException {
        return new CompoundEnumeration(new Enumeration[]{Object.class.getClassLoader().getResources(str), findResources(str), this.mOriginAppClassLoader.getResources(str)});
    }
}
