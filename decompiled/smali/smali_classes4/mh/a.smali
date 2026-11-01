.class public final Lmh/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh/a$a;
    }
.end annotation


# static fields
.field public static final a:Lmh/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmh/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmh/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmh/a;->a:Lmh/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
