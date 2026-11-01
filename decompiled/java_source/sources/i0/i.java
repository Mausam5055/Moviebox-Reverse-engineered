package i0;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {
    public static final d.a a(Resources.Theme theme, Resources resources, XmlResourceParser xmlResourceParser, int i11) throws XmlPullParserException, IOException {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        a0.a aVar = new a0.a(xmlResourceParser, 0, 2, null);
        androidx.compose.ui.graphics.vector.c.a aVarA = a0.c.a(aVar, resources, theme, attributeSetAsAttributeSet);
        int iG = 0;
        while (!a0.c.d(xmlResourceParser)) {
            iG = a0.c.g(aVar, resources, attributeSetAsAttributeSet, theme, aVarA, iG);
            xmlResourceParser.next();
        }
        return new d.a(aVarA.e(), i11);
    }
}
