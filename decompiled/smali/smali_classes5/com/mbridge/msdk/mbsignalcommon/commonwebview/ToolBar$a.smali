.class public Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static b:I = 0x28


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    sget v0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$a;->a:I

    return-void
.end method

.method public b(I)V
    .locals 0

    sput p1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$a;->b:I

    return-void
.end method
