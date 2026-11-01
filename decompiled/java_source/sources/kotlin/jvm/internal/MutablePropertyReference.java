package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes7.dex */
public abstract class MutablePropertyReference extends PropertyReference implements KMutableProperty {
    public MutablePropertyReference() {
    }

    @SinceKotlin
    public MutablePropertyReference(Object obj) {
        super(obj);
    }

    @SinceKotlin
    public MutablePropertyReference(Object obj, Class cls, String str, String str2, int i11) {
        super(obj, cls, str, str2, i11);
    }

    @Override // kotlin.jvm.internal.PropertyReference
    public abstract /* synthetic */ KProperty.Getter getGetter();

    public abstract /* synthetic */ KMutableProperty.Setter getSetter();
}
