package x4;

import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import y4.h;

/* JADX INFO: loaded from: classes3.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface d {
    boolean alphabetic() default true;

    boolean asm() default true;

    Class autoTypeCheckHandler() default h.c.class;

    Class builder() default Void.class;

    Class deserializer() default Void.class;

    String[] ignores() default {};

    String[] includes() default {};

    Class mappingTo() default Void.class;

    PropertyNamingStrategy naming() default PropertyNamingStrategy.NeverUseThisValueExceptDefaultValue;

    String[] orders() default {};

    Feature[] parseFeatures() default {};

    Class[] seeAlso() default {};

    boolean serializeEnumAsJavaBean() default false;

    Class serializer() default Void.class;

    SerializerFeature[] serialzeFeatures() default {};

    Class[] serialzeFilters() default {};

    String typeKey() default "";

    String typeName() default "";
}
