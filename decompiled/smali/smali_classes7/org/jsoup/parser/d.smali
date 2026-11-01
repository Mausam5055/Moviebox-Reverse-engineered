.class public Lorg/jsoup/parser/d;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lorg/jsoup/parser/d;

.field public static final d:Lorg/jsoup/parser/d;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jsoup/parser/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/d;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/d;->c:Lorg/jsoup/parser/d;

    new-instance v0, Lorg/jsoup/parser/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/d;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/d;->d:Lorg/jsoup/parser/d;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/jsoup/parser/d;->a:Z

    iput-boolean p2, p0, Lorg/jsoup/parser/d;->b:Z

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/d;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->v()V

    :cond_0
    return-object p1
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/jsoup/parser/d;->a:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Le10/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
