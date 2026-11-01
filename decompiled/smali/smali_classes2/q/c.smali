.class public abstract Lq/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lq/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq/c$a;

    invoke-direct {v0}, Lq/c$a;-><init>()V

    sput-object v0, Lq/c;->a:Lq/b;

    return-void
.end method

.method public static final a(I)Lq/b;
    .locals 1

    new-instance v0, Lq/e;

    int-to-float p0, p0

    invoke-direct {v0, p0}, Lq/e;-><init>(F)V

    return-object v0
.end method

.method public static final b(F)Lq/b;
    .locals 2

    new-instance v0, Lq/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq/d;-><init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
