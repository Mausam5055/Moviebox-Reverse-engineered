.class public final Lyg/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyg/a$a;
    }
.end annotation


# static fields
.field public static final a:Lyg/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyg/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyg/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lyg/a;->a:Lyg/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
