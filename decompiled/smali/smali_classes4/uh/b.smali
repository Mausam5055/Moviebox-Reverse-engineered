.class public final Luh/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luh/b$a;
    }
.end annotation


# static fields
.field public static final a:Luh/b$a;

.field private static b:Luh/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Luh/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luh/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luh/b;->a:Luh/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Luh/a;
    .locals 1

    sget-object v0, Luh/b;->b:Luh/a;

    return-object v0
.end method

.method public static final synthetic b(Luh/a;)V
    .locals 0

    sput-object p0, Luh/b;->b:Luh/a;

    return-void
.end method
