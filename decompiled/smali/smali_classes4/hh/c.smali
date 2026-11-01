.class public final Lhh/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhh/c$a;
    }
.end annotation


# static fields
.field public static final a:Lhh/c$a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhh/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhh/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lhh/c;->a:Lhh/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    sget-boolean v0, Lhh/c;->b:Z

    return v0
.end method

.method public static final synthetic b(Z)V
    .locals 0

    sput-boolean p0, Lhh/c;->b:Z

    return-void
.end method
