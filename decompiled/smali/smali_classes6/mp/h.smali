.class public final Lmp/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp/h$a;,
        Lmp/h$b;
    }
.end annotation


# static fields
.field public static final a:Lmp/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmp/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmp/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmp/h;->a:Lmp/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
