.class public final Leh/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/f$a;
    }
.end annotation


# static fields
.field public static final a:Leh/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leh/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leh/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Leh/f;->a:Leh/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
