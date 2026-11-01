package fm;

import com.transsion.json.b.n;
import com.transsion.json.o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes6.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface a {
    boolean include() default true;

    String name() default "";

    Class objectFactory() default o.class;

    Class transformer() default n.class;
}
