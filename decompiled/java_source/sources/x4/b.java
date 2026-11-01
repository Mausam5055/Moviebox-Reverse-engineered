package x4;

import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface b {
    String[] alternateNames() default {};

    String defaultValue() default "";

    boolean deserialize() default true;

    Class deserializeUsing() default Void.class;

    String format() default "";

    boolean jsonDirect() default false;

    String label() default "";

    String name() default "";

    int ordinal() default 0;

    Feature[] parseFeatures() default {};

    boolean serialize() default true;

    Class serializeUsing() default Void.class;

    SerializerFeature[] serialzeFeatures() default {};

    boolean unwrapped() default false;
}
