.class public final Llr/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llr/b$a;,
        Llr/b$b;,
        Llr/b$c;,
        Llr/b$d;
    }
.end annotation


# static fields
.field public static final e:Llr/b$b;

.field private static final f:Llr/b;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Llr/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llr/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llr/b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Llr/b;->e:Llr/b$b;

    new-instance v0, Llr/b$a;

    invoke-direct {v0}, Llr/b$a;-><init>()V

    invoke-virtual {v0}, Llr/b$a;->a()Llr/b;

    move-result-object v0

    sput-object v0, Llr/b;->f:Llr/b;

    return-void
.end method

.method private constructor <init>(Llr/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Llr/b$a;->c()Z

    move-result v0

    iput-boolean v0, p0, Llr/b;->a:Z

    invoke-virtual {p1}, Llr/b$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Llr/b;->b:Z

    invoke-virtual {p1}, Llr/b$a;->b()Z

    move-result v0

    iput-boolean v0, p0, Llr/b;->c:Z

    invoke-virtual {p1}, Llr/b$a;->e()Llr/b$d;

    move-result-object p1

    iput-object p1, p0, Llr/b;->d:Llr/b$d;

    return-void
.end method

.method public synthetic constructor <init>(Llr/b$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Llr/b;-><init>(Llr/b$a;)V

    return-void
.end method

.method public static final synthetic a()Llr/b;
    .locals 1

    sget-object v0, Llr/b;->f:Llr/b;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Llr/b;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Llr/b;->a:Z

    return v0
.end method

.method public final d()Llr/b$d;
    .locals 1

    iget-object v0, p0, Llr/b;->d:Llr/b$d;

    return-object v0
.end method
