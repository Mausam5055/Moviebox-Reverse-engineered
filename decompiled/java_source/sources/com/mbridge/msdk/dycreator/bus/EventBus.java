package com.mbridge.msdk.dycreator.bus;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public final class EventBus {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static volatile EventBus f34780o;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f34792k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static ExecutorService f34779n = Executors.newCachedThreadPool();
    public static String TAG = "Event";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Map<Class<?>, List<Class<?>>> f34781p = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<Subscription>> f34782a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Object, List<Class<?>>> f34783b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Class<?>, Object> f34784c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadLocal<List<Object>> f34785d = new ThreadLocal<List<Object>>() { // from class: com.mbridge.msdk.dycreator.bus.EventBus.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<Object> initialValue() {
            return new ArrayList();
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ThreadLocal<BooleanWrapper> f34786e = new ThreadLocal<BooleanWrapper>() { // from class: com.mbridge.msdk.dycreator.bus.EventBus.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BooleanWrapper initialValue() {
            return new BooleanWrapper();
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f34787f = "onEvent";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HandlerPoster f34788g = new HandlerPoster(this, Looper.getMainLooper(), 10);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final BackgroundPoster f34789h = new BackgroundPoster(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AsyncPoster f34790i = new AsyncPoster(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final SubscriberMethodFinder f34791j = new SubscriberMethodFinder();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f34793l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Map<String, Object> f34794m = new ConcurrentHashMap();

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.bus.EventBus$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34797a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f34797a = iArr;
            try {
                iArr[ThreadMode.PostThread.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34797a[ThreadMode.MainThread.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34797a[ThreadMode.BackgroundThread.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34797a[ThreadMode.Async.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static final class BooleanWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f34798a;

        BooleanWrapper() {
        }
    }

    interface PostCallback {
        void onPostCompleted(List<SubscriberExceptionEvent> list);
    }

    private List<Class<?>> a(Class<?> cls) {
        List<Class<?>> arrayList;
        Map<Class<?>, List<Class<?>>> map = f34781p;
        synchronized (map) {
            try {
                arrayList = map.get(cls);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                        arrayList.add(superclass);
                        a(arrayList, superclass.getInterfaces());
                    }
                    f34781p.put(cls, arrayList);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    private void a(Subscription subscription, Object obj, boolean z10) {
        int i11 = AnonymousClass3.f34797a[subscription.f34816b.f34810b.ordinal()];
        if (i11 == 1) {
            a(subscription, obj);
            return;
        }
        if (i11 == 2) {
            if (z10) {
                a(subscription, obj);
                return;
            } else {
                this.f34788g.a(subscription, obj);
                return;
            }
        }
        if (i11 == 3) {
            if (z10) {
                this.f34789h.enqueue(subscription, obj);
                return;
            } else {
                a(subscription, obj);
                return;
            }
        }
        if (i11 == 4) {
            this.f34790i.enqueue(subscription, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + subscription.f34816b.f34810b);
    }

    private void a(Object obj, SubscriberMethod subscriberMethod, boolean z10) {
        Object obj2;
        this.f34792k = true;
        Class<?> cls = subscriberMethod.f34811c;
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.f34782a.get(cls);
        Subscription subscription = new Subscription(obj, subscriberMethod);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f34782a.put(cls, copyOnWriteArrayList);
        } else {
            Iterator<Subscription> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (it.next().equals(subscription)) {
                    throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
                }
            }
        }
        subscriberMethod.f34809a.setAccessible(true);
        copyOnWriteArrayList.add(subscription);
        List<Class<?>> arrayList = this.f34783b.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f34783b.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (z10) {
            synchronized (this.f34784c) {
                obj2 = this.f34784c.get(cls);
            }
            if (obj2 != null) {
                a(subscription, obj2, Looper.getMainLooper() == Looper.myLooper());
            }
        }
    }

    private void a(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.f34782a.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i11 = 0;
            while (i11 < size) {
                if (copyOnWriteArrayList.get(i11).f34815a == obj) {
                    copyOnWriteArrayList.remove(i11);
                    i11--;
                    size--;
                }
                i11++;
            }
        }
    }

    private void a(Object obj, String str, boolean z10) {
        Iterator<SubscriberMethod> it = this.f34791j.a(obj.getClass(), str).iterator();
        while (it.hasNext()) {
            a(obj, it.next(), z10);
        }
    }

    private synchronized void a(Object obj, String str, boolean z10, Class<?> cls, Class<?>... clsArr) {
        try {
            for (SubscriberMethod subscriberMethod : this.f34791j.a(obj.getClass(), str)) {
                if (cls == subscriberMethod.f34811c) {
                    a(obj, subscriberMethod, z10);
                } else if (clsArr != null) {
                    for (Class<?> cls2 : clsArr) {
                        if (cls2 == subscriberMethod.f34811c) {
                            a(obj, subscriberMethod, z10);
                            break;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void a(Object obj, boolean z10) throws Error {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                List<Class<?>> listA = a(cls);
                int size = listA.size();
                boolean z11 = false;
                for (int i11 = 0; i11 < size; i11++) {
                    Class<?> cls2 = listA.get(i11);
                    synchronized (this) {
                        copyOnWriteArrayList = this.f34782a.get(cls2);
                    }
                    if (copyOnWriteArrayList != null) {
                        Iterator<Subscription> it = copyOnWriteArrayList.iterator();
                        while (it.hasNext()) {
                            a(it.next(), obj, z10);
                        }
                        z11 = true;
                    }
                }
                if (z11) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No subscripers registered for event ");
                sb2.append(cls);
                if (cls == NoSubscriberEvent.class || cls == SubscriberExceptionEvent.class) {
                    return;
                }
                post(new NoSubscriberEvent(this, obj));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    public static void clearCaches() {
        SubscriberMethodFinder.a();
        f34781p.clear();
    }

    public static void clearSkipMethodNameVerifications() {
        SubscriberMethodFinder.clearSkipMethodNameVerifications();
    }

    public static EventBus getDefault() {
        if (f34780o == null) {
            synchronized (EventBus.class) {
                try {
                    if (f34780o == null) {
                        f34780o = new EventBus();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34780o;
    }

    public static void skipMethodNameVerificationFor(Class<?> cls) {
        SubscriberMethodFinder.a(cls);
    }

    void a(PendingPost pendingPost) {
        Object obj = pendingPost.f34804a;
        Subscription subscription = pendingPost.f34805b;
        PendingPost.a(pendingPost);
        a(subscription, obj);
    }

    void a(Subscription subscription, Object obj) throws Error {
        try {
            subscription.f34816b.f34809a.invoke(subscription.f34815a, obj);
        } catch (IllegalAccessException e11) {
            throw new IllegalStateException("Unexpected exception", e11);
        } catch (InvocationTargetException e12) {
            Throwable cause = e12.getCause();
            if (!(obj instanceof SubscriberExceptionEvent)) {
                if (this.f34793l) {
                    Log.e(TAG, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + subscription.f34815a.getClass(), cause);
                }
                post(new SubscriberExceptionEvent(this, cause, obj, subscription.f34815a));
                return;
            }
            Log.e(TAG, "SubscriberExceptionEvent subscriber " + subscription.f34815a.getClass() + " threw an exception", cause);
            SubscriberExceptionEvent subscriberExceptionEvent = (SubscriberExceptionEvent) obj;
            Log.e(TAG, "Initial event " + subscriberExceptionEvent.causingEvent + " caused exception in " + subscriberExceptionEvent.causingSubscriber, subscriberExceptionEvent.throwable);
        }
    }

    public void configureLogSubscriberExceptions(boolean z10) {
        if (this.f34792k) {
            throw new EventBusException("This method must be called before any registration");
        }
        this.f34793l = z10;
    }

    public Object getStickyEvent(Class<?> cls) {
        Object obj;
        synchronized (this.f34784c) {
            obj = this.f34784c.get(cls);
        }
        return obj;
    }

    public void post(Object obj) {
        List<Object> list = this.f34785d.get();
        list.add(obj);
        BooleanWrapper booleanWrapper = this.f34786e.get();
        if (booleanWrapper.f34798a) {
            return;
        }
        boolean z10 = Looper.getMainLooper() == Looper.myLooper();
        booleanWrapper.f34798a = true;
        while (!list.isEmpty()) {
            try {
                a(list.remove(0), z10);
            } catch (Throwable th2) {
                booleanWrapper.f34798a = false;
                throw th2;
            }
        }
        booleanWrapper.f34798a = false;
    }

    public void postSticky(Object obj) {
        post(obj);
        synchronized (this.f34784c) {
            this.f34784c.put(obj.getClass(), obj);
        }
    }

    public void register(Object obj) {
        a(obj, this.f34787f, false);
    }

    public void register(Object obj, Class<?> cls, Class<?>... clsArr) {
        a(obj, this.f34787f, false, cls, clsArr);
    }

    public void register(Object obj, String str) {
        a(obj, str, false);
    }

    public synchronized void register(Object obj, String str, Class<?> cls, Class<?>... clsArr) {
        a(obj, str, false, cls, clsArr);
    }

    public void register(String str, Object obj) {
        Map<String, Object> map = this.f34794m;
        if (map != null && map.containsKey(str)) {
            unregister(this.f34794m.get(str));
        }
        this.f34794m.put(str, obj);
        a(obj, this.f34787f, false);
    }

    public void registerSticky(Object obj) {
        a(obj, this.f34787f, true);
    }

    public void registerSticky(Object obj, Class<?> cls, Class<?>... clsArr) {
        a(obj, this.f34787f, true, cls, clsArr);
    }

    public void registerSticky(Object obj, String str) {
        a(obj, str, true);
    }

    public synchronized void registerSticky(Object obj, String str, Class<?> cls, Class<?>... clsArr) {
        a(obj, str, true, cls, clsArr);
    }

    public void release() {
        if (f34780o != null) {
            f34780o = null;
            f34779n = null;
            Map<Class<?>, List<Class<?>>> map = f34781p;
            if (map != null && map.size() > 0) {
                map.clear();
            }
            Map<Class<?>, CopyOnWriteArrayList<Subscription>> map2 = this.f34782a;
            if (map2 != null && map2.size() > 0) {
                this.f34782a.clear();
            }
            Map<Object, List<Class<?>>> map3 = this.f34783b;
            if (map3 != null && map3.size() > 0) {
                this.f34783b.clear();
            }
            Map<Class<?>, Object> map4 = this.f34784c;
            if (map4 != null && map4.size() > 0) {
                this.f34784c.clear();
            }
            Map<String, Object> map5 = this.f34794m;
            if (map5 == null || map5.size() <= 0) {
                return;
            }
            this.f34794m.clear();
        }
    }

    public Object removeStickyEvent(Class<?> cls) {
        Object objRemove;
        synchronized (this.f34784c) {
            objRemove = this.f34784c.remove(cls);
        }
        return objRemove;
    }

    public boolean removeStickyEvent(Object obj) {
        synchronized (this.f34784c) {
            try {
                Class<?> cls = obj.getClass();
                if (!obj.equals(this.f34784c.get(cls))) {
                    return false;
                }
                this.f34784c.remove(cls);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized void unregister(Object obj) {
        try {
            List<Class<?>> list = this.f34783b.get(obj);
            if (list != null) {
                Iterator<Class<?>> it = list.iterator();
                while (it.hasNext()) {
                    a(obj, it.next());
                }
                this.f34783b.remove(obj);
            } else {
                Log.w(TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void unregister(Object obj, Class<?>... clsArr) {
        try {
            if (clsArr.length == 0) {
                throw new IllegalArgumentException("Provide at least one event class");
            }
            List<Class<?>> list = this.f34783b.get(obj);
            if (list != null) {
                for (Class<?> cls : clsArr) {
                    a(obj, cls);
                    list.remove(cls);
                }
                if (list.isEmpty()) {
                    this.f34783b.remove(obj);
                }
            } else {
                Log.w(TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void unregister(String str) {
        try {
            Map<String, Object> map = this.f34794m;
            if (map != null && map.containsKey(str)) {
                Object objRemove = this.f34794m.remove(str);
                List<Class<?>> list = this.f34783b.get(objRemove);
                if (list != null) {
                    Iterator<Class<?>> it = list.iterator();
                    while (it.hasNext()) {
                        a(objRemove, it.next());
                    }
                    this.f34783b.remove(objRemove);
                } else {
                    Log.w(TAG, "Subscriber to unregister was not registered before: " + objRemove.getClass());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
