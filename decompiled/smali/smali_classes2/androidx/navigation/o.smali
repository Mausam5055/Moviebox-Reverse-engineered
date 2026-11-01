.class public abstract Landroidx/navigation/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/o$l;,
        Landroidx/navigation/o$o;,
        Landroidx/navigation/o$n;,
        Landroidx/navigation/o$q;,
        Landroidx/navigation/o$m;,
        Landroidx/navigation/o$p;
    }
.end annotation


# static fields
.field public static final c:Landroidx/navigation/o$l;

.field public static final d:Landroidx/navigation/o;

.field public static final e:Landroidx/navigation/o;

.field public static final f:Landroidx/navigation/o;

.field public static final g:Landroidx/navigation/o;

.field public static final h:Landroidx/navigation/o;

.field public static final i:Landroidx/navigation/o;

.field public static final j:Landroidx/navigation/o;

.field public static final k:Landroidx/navigation/o;

.field public static final l:Landroidx/navigation/o;

.field public static final m:Landroidx/navigation/o;

.field public static final n:Landroidx/navigation/o;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/o$l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/o$l;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/o;->c:Landroidx/navigation/o$l;

    new-instance v0, Landroidx/navigation/o$f;

    invoke-direct {v0}, Landroidx/navigation/o$f;-><init>()V

    sput-object v0, Landroidx/navigation/o;->d:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$i;

    invoke-direct {v0}, Landroidx/navigation/o$i;-><init>()V

    sput-object v0, Landroidx/navigation/o;->e:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$e;

    invoke-direct {v0}, Landroidx/navigation/o$e;-><init>()V

    sput-object v0, Landroidx/navigation/o;->f:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$h;

    invoke-direct {v0}, Landroidx/navigation/o$h;-><init>()V

    sput-object v0, Landroidx/navigation/o;->g:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$g;

    invoke-direct {v0}, Landroidx/navigation/o$g;-><init>()V

    sput-object v0, Landroidx/navigation/o;->h:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$d;

    invoke-direct {v0}, Landroidx/navigation/o$d;-><init>()V

    sput-object v0, Landroidx/navigation/o;->i:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$c;

    invoke-direct {v0}, Landroidx/navigation/o$c;-><init>()V

    sput-object v0, Landroidx/navigation/o;->j:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$b;

    invoke-direct {v0}, Landroidx/navigation/o$b;-><init>()V

    sput-object v0, Landroidx/navigation/o;->k:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$a;

    invoke-direct {v0}, Landroidx/navigation/o$a;-><init>()V

    sput-object v0, Landroidx/navigation/o;->l:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$k;

    invoke-direct {v0}, Landroidx/navigation/o$k;-><init>()V

    sput-object v0, Landroidx/navigation/o;->m:Landroidx/navigation/o;

    new-instance v0, Landroidx/navigation/o$j;

    invoke-direct {v0}, Landroidx/navigation/o$j;-><init>()V

    sput-object v0, Landroidx/navigation/o;->n:Landroidx/navigation/o;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/navigation/o;->a:Z

    const-string p1, "nav_type"

    iput-object p1, p0, Landroidx/navigation/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/o;->a:Z

    return v0
.end method

.method public final d(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroidx/navigation/o;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/o;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p3
.end method

.method public abstract e(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/navigation/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
