.class public interface abstract annotation Lfm/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lfm/a;
        include = true
        name = ""
        objectFactory = Lcom/transsion/json/o;
        transformer = Lcom/transsion/json/b/n;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract include()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract objectFactory()Ljava/lang/Class;
.end method

.method public abstract transformer()Ljava/lang/Class;
.end method
