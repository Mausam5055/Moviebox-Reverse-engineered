package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class w3 {

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Field f30858a;

        private b(Field field) {
            this.f30858a = field;
            field.setAccessible(true);
        }

        void a(Object obj, int i11) {
            try {
                this.f30858a.set(obj, Integer.valueOf(i11));
            } catch (IllegalAccessException e11) {
                throw new AssertionError(e11);
            }
        }

        void b(Object obj, Object obj2) {
            try {
                this.f30858a.set(obj, obj2);
            } catch (IllegalAccessException e11) {
                throw new AssertionError(e11);
            }
        }
    }

    static b a(Class cls, String str) {
        try {
            return new b(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e11) {
            throw new AssertionError(e11);
        }
    }

    static void b(Map map, ObjectInputStream objectInputStream) {
        c(map, objectInputStream, objectInputStream.readInt());
    }

    static void c(Map map, ObjectInputStream objectInputStream, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            map.put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    static void d(j3 j3Var, ObjectInputStream objectInputStream) throws IOException {
        e(j3Var, objectInputStream, objectInputStream.readInt());
    }

    static void e(j3 j3Var, ObjectInputStream objectInputStream, int i11) throws IOException {
        for (int i12 = 0; i12 < i11; i12++) {
            Collection collection = j3Var.get(objectInputStream.readObject());
            int i13 = objectInputStream.readInt();
            for (int i14 = 0; i14 < i13; i14++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }

    static void f(l3 l3Var, ObjectInputStream objectInputStream) {
        g(l3Var, objectInputStream, objectInputStream.readInt());
    }

    static void g(l3 l3Var, ObjectInputStream objectInputStream, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            l3Var.add(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    static int h(ObjectInputStream objectInputStream) {
        return objectInputStream.readInt();
    }

    static void i(Map map, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    static void j(j3 j3Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(j3Var.asMap().size());
        for (Map.Entry entry : j3Var.asMap().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(((Collection) entry.getValue()).size());
            Iterator it = ((Collection) entry.getValue()).iterator();
            while (it.hasNext()) {
                objectOutputStream.writeObject(it.next());
            }
        }
    }

    static void k(l3 l3Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(l3Var.entrySet().size());
        for (l3.a aVar : l3Var.entrySet()) {
            objectOutputStream.writeObject(aVar.getElement());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }
}
