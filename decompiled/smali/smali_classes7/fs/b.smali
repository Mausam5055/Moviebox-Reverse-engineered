.class public final Lfs/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs/b$a;
    }
.end annotation


# static fields
.field public static final a:Lfs/b$a;

.field private static b:Lfs/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfs/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfs/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfs/b;->a:Lfs/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lfs/a;
    .locals 1

    sget-object v0, Lfs/b;->b:Lfs/a;

    return-object v0
.end method

.method public static final synthetic b(Lfs/a;)V
    .locals 0

    sput-object p0, Lfs/b;->b:Lfs/a;

    return-void
.end method
