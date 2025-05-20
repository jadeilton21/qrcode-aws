package com.qrcode_jade.qrcode.ports;

public interface StoragePort {
    String uploadFile(byte[] fileData, String fileName, String contentType);
}