.class public final Lbd/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcc/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbd/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbd/a;

    invoke-direct {v0}, Lbd/a;-><init>()V

    sput-object v0, Lbd/a;->a:Lcc/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcc/b;)V
    .locals 2

    sget-object v0, Lbd/a$a;->a:Lbd/a$a;

    const-class v1, Lbd/d;

    invoke-interface {p1, v1, v0}, Lcc/b;->a(Ljava/lang/Class;Lbc/c;)Lcc/b;

    const-class v1, Lbd/b;

    invoke-interface {p1, v1, v0}, Lcc/b;->a(Ljava/lang/Class;Lbc/c;)Lcc/b;

    return-void
.end method
