.class public final Lkt/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkt/b$a;
    }
.end annotation


# static fields
.field public static final a:Lkt/b$a;

.field private static b:Lkt/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkt/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkt/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkt/b;->a:Lkt/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lkt/a;
    .locals 1

    sget-object v0, Lkt/b;->b:Lkt/a;

    return-object v0
.end method

.method public static final synthetic b(Lkt/a;)V
    .locals 0

    sput-object p0, Lkt/b;->b:Lkt/a;

    return-void
.end method
