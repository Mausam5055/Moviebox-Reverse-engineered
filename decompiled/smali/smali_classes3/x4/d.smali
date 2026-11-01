.class public interface abstract annotation Lx4/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lx4/d;
        alphabetic = true
        asm = true
        autoTypeCheckHandler = Ly4/h$c;
        builder = Ljava/lang/Void;
        deserializer = Ljava/lang/Void;
        ignores = {}
        includes = {}
        mappingTo = Ljava/lang/Void;
        naming = .enum Lcom/alibaba/fastjson/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson/PropertyNamingStrategy;
        orders = {}
        parseFeatures = {}
        seeAlso = {}
        serializeEnumAsJavaBean = false
        serializer = Ljava/lang/Void;
        serialzeFeatures = {}
        serialzeFilters = {}
        typeKey = ""
        typeName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract alphabetic()Z
.end method

.method public abstract asm()Z
.end method

.method public abstract autoTypeCheckHandler()Ljava/lang/Class;
.end method

.method public abstract builder()Ljava/lang/Class;
.end method

.method public abstract deserializer()Ljava/lang/Class;
.end method

.method public abstract ignores()[Ljava/lang/String;
.end method

.method public abstract includes()[Ljava/lang/String;
.end method

.method public abstract mappingTo()Ljava/lang/Class;
.end method

.method public abstract naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;
.end method

.method public abstract orders()[Ljava/lang/String;
.end method

.method public abstract parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;
.end method

.method public abstract seeAlso()[Ljava/lang/Class;
.end method

.method public abstract serializeEnumAsJavaBean()Z
.end method

.method public abstract serializer()Ljava/lang/Class;
.end method

.method public abstract serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
.end method

.method public abstract serialzeFilters()[Ljava/lang/Class;
.end method

.method public abstract typeKey()Ljava/lang/String;
.end method

.method public abstract typeName()Ljava/lang/String;
.end method
