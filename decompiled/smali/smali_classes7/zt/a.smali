.class public final Lzt/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lzt/a;

.field private static final b:Lzt/a$a;

.field private static final c:Lwu/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzt/a;

    invoke-direct {v0}, Lzt/a;-><init>()V

    sput-object v0, Lzt/a;->a:Lzt/a;

    new-instance v0, Lzt/a$a;

    invoke-direct {v0}, Lzt/a$a;-><init>()V

    sput-object v0, Lzt/a;->b:Lzt/a$a;

    new-instance v1, Lwu/g;

    invoke-direct {v1, v0}, Lwu/g;-><init>(Lou/b;)V

    sput-object v1, Lzt/a;->c:Lwu/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lwu/g;
    .locals 1

    sget-object v0, Lzt/a;->c:Lwu/g;

    return-object v0
.end method
