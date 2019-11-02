.class Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;
.super Landroid/os/Handler;
.source "DynamicSarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmdHandler"
.end annotation


# static fields
.field private static final ASDIV_QUERY_REQ_NUM:I = 0x80056

.field private static final DYNAMIC_SAR_REQ_NUM:I = 0x80055

.field private static final INT_SIZE:I = 0x4

.field private static final OEM_IDENTIFIER:Ljava/lang/String; = "QOEMHOOK"

.field private static mDeviceType:Ljava/lang/String;


# instance fields
.field private final OEMHOOK_REQ_LEN:I

.field private mReqBuf:[B

.field private mResBuf:[B

.field mSarStateSentCount:I

.field private sarState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 607
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 602
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 608
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->OEMHOOK_REQ_LEN:I

    .line 609
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->OEMHOOK_REQ_LEN:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mReqBuf:[B

    .line 610
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mSarStateSentCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/qti/internal/telephony/DynamicSarController$1;

    .line 602
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;-><init>()V

    return-void
.end method

.method private cmdMsgSend(II)V
    .locals 9
    .param p1, "reqNum"    # I
    .param p2, "para1"    # I

    .line 615
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 617
    .local v0, "requestData":[B
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1500()Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 618
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1500()Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    .line 620
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 621
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 622
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 623
    .local v3, "response":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 624
    .local v4, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 625
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    .line 626
    const-string v5, "DynamicSarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response is: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v5, "DynamicSarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mResBuf[0] = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    aget-byte v7, v8, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .end local v3    # "response":[B
    .end local v4    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 629
    :cond_0
    const-string v3, "DynamicSarController"

    const-string v4, "mQcRilHook.sendQcRilHookMsg: Null Response"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    :cond_1
    const-string v3, "DynamicSarController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0    # "requestData":[B
    .end local v1    # "reqBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :goto_0
    goto :goto_1

    .line 635
    :cond_2
    const-string v0, "DynamicSarController"

    const-string v1, "Error: QcrilHook is not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_1
    return-void
.end method

.method private getASDIVStatus()V
    .locals 11

    .line 653
    const/4 v0, 0x4

    .line 654
    .local v0, "msg_size":I
    const v1, 0x802a8

    .line 655
    .local v1, "QCRIL_REQ_HOOK_GET_ASDIV_STATE_REQ":I
    const-string v2, "QOEMHOOK"

    .line 656
    .local v2, "OEM_IDENTIFIER":Ljava/lang/String;
    const-string v3, "QOEMHOOK"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    .line 657
    .local v3, "asdivStatusReqSize":I
    new-array v4, v3, [B

    .line 659
    .local v4, "mASDivStatusReq":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v6, v7, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    .line 660
    .local v6, "msg":Landroid/os/Message;
    new-instance v7, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;

    invoke-direct {v7, v6}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$AsdivOemHookCallback;-><init>(Landroid/os/Message;)V

    .line 661
    .local v7, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1500()Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 662
    .local v8, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 663
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1500()Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v9

    const v10, 0x802a8

    invoke-virtual {v9, v10, v4, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 664
    return-void
.end method

.method private queryASDivStatus()V
    .locals 4

    .line 640
    const/4 v0, 0x0

    const v1, 0x80056

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    .line 641
    const-string v1, "DynamicSarController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrive ASDIV status: mResBuf[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    .line 643
    const-string v0, "DynamicSarController"

    const-string v1, "ASDiv Status is default, no action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mResBuf:[B

    aget-byte v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 646
    const-string v0, "DynamicSarController"

    const-string v1, "ASDIV status is SWAP, do dynamic sar control."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 649
    :cond_1
    const-string v0, "DynamicSarController"

    const-string v1, "ASDiv Status result is unexpected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 669
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    const v2, 0x80055

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 688
    :pswitch_0
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    .line 689
    goto :goto_1

    .line 692
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 693
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    goto :goto_0

    .line 695
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    .line 697
    :goto_0
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    .line 698
    goto :goto_1

    .line 671
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    .line 672
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1600()I

    move-result v0

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    if-ne v0, v3, :cond_2

    .line 673
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mSarStateSentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mSarStateSentCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 674
    const-string v0, "handlerMessage, new sarState is same as current, ingore more requests."

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 677
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerMessage, new sarState is same as current, send it for the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mSarStateSentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "th time."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$000(Ljava/lang/String;)V

    .line 678
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    goto :goto_1

    .line 681
    :cond_2
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->cmdMsgSend(II)V

    .line 682
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->sarState:I

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController;->access$1602(I)I

    .line 683
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->mSarStateSentCount:I

    .line 685
    goto :goto_1

    .line 701
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DynamicSarController$CmdProcThread$CmdHandler;->getASDIVStatus()V

    .line 704
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
