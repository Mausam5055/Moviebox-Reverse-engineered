.class public final Lu8/c;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# static fields
.field private static final b:Lu8/c;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu8/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu8/c;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lu8/c;->b:Lu8/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lu8/b;
    .locals 2

    new-instance v0, Lu8/c;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lu8/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lu8/c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu8/c;->a:Ljava/lang/Object;

    return-object v0
.end method
