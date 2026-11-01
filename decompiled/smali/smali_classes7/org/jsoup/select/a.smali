.class public abstract Lorg/jsoup/select/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/a$a;
    }
.end annotation


# direct methods
.method public static a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .locals 2

    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    new-instance v1, Lorg/jsoup/select/a$a;

    invoke-direct {v1, p1, v0, p0}, Lorg/jsoup/select/a$a;-><init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/select/c;)V

    invoke-static {v1, p1}, Lorg/jsoup/select/d;->c(Lf10/a;Lorg/jsoup/nodes/j;)V

    return-object v0
.end method
