.class public final Lpg/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg/a$a;
    }
.end annotation


# static fields
.field public static final a:Lpg/a$a;

.field private static b:Landroid/app/Application;

.field private static c:Lpg/b;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpg/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpg/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpg/a;->a:Lpg/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    sget-boolean v0, Lpg/a;->d:Z

    return v0
.end method

.method public static final synthetic b()Lpg/b;
    .locals 1

    sget-object v0, Lpg/a;->c:Lpg/b;

    return-object v0
.end method

.method public static final synthetic c(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lpg/a;->b:Landroid/app/Application;

    return-void
.end method

.method public static final synthetic d(Z)V
    .locals 0

    sput-boolean p0, Lpg/a;->d:Z

    return-void
.end method

.method public static final synthetic e(Lpg/b;)V
    .locals 0

    sput-object p0, Lpg/a;->c:Lpg/b;

    return-void
.end method
