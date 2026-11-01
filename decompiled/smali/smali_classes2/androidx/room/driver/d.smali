.class public abstract Landroidx/room/driver/d;
.super Ljava/lang/Object;

# interfaces
.implements Lz3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/driver/d$a;,
        Landroidx/room/driver/d$b;,
        Landroidx/room/driver/d$c;
    }
.end annotation


# static fields
.field public static final d:Landroidx/room/driver/d$a;


# instance fields
.field private final a:La4/d;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/driver/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/driver/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/driver/d;->d:Landroidx/room/driver/d$a;

    return-void
.end method

.method private constructor <init>(La4/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/driver/d;->a:La4/d;

    iput-object p2, p0, Landroidx/room/driver/d;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(La4/d;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/room/driver/d;-><init>(La4/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final d()La4/d;
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/d;->a:La4/d;

    return-object v0
.end method

.method public synthetic getBoolean(I)Z
    .locals 0

    invoke-static {p0, p1}, Lz3/d;->a(Lz3/e;I)Z

    move-result p1

    return p1
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final i(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/room/driver/d;->c:Z

    return-void
.end method

.method protected final isClosed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/room/driver/d;->c:Z

    return v0
.end method

.method protected final k()V
    .locals 2

    iget-boolean v0, p0, Landroidx/room/driver/d;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    const-string v1, "statement is closed"

    invoke-static {v0, v1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
