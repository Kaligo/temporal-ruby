# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: temporal/api/batch/v1/message.proto

require 'google/protobuf'

require 'dependencies/gogoproto/gogo_pb'
require 'google/protobuf/timestamp_pb'
require 'temporal/api/common/v1/message_pb'
require 'temporal/api/enums/v1/batch_operation_pb'


descriptor_data = "\n#temporal/api/batch/v1/message.proto\x12\x15temporal.api.batch.v1\x1a!dependencies/gogoproto/gogo.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a$temporal/api/common/v1/message.proto\x1a+temporal/api/enums/v1/batch_operation.proto\"\xcb\x01\n\x12\x42\x61tchOperationInfo\x12\x0e\n\x06job_id\x18\x01 \x01(\t\x12\x39\n\x05state\x18\x02 \x01(\x0e\x32*.temporal.api.enums.v1.BatchOperationState\x12\x34\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\x12\x34\n\nclose_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\x90\xdf\x1f\x01\"`\n\x19\x42\x61tchOperationTermination\x12\x31\n\x07\x64\x65tails\x18\x01 \x01(\x0b\x32 .temporal.api.common.v1.Payloads\x12\x10\n\x08identity\x18\x02 \x01(\t\"\x99\x01\n\x14\x42\x61tchOperationSignal\x12\x0e\n\x06signal\x18\x01 \x01(\t\x12/\n\x05input\x18\x02 \x01(\x0b\x32 .temporal.api.common.v1.Payloads\x12.\n\x06header\x18\x03 \x01(\x0b\x32\x1e.temporal.api.common.v1.Header\x12\x10\n\x08identity\x18\x04 \x01(\t\".\n\x1a\x42\x61tchOperationCancellation\x12\x10\n\x08identity\x18\x01 \x01(\t\"*\n\x16\x42\x61tchOperationDeletion\x12\x10\n\x08identity\x18\x01 \x01(\tB\x84\x01\n\x18io.temporal.api.batch.v1B\x0cMessageProtoP\x01Z!go.temporal.io/api/batch/v1;batch\xaa\x02\x17Temporalio.Api.Batch.V1\xea\x02\x1aTemporalio::Api::Batch::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Temporalio
  module Api
    module Batch
      module V1
        BatchOperationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.batch.v1.BatchOperationInfo").msgclass
        BatchOperationTermination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.batch.v1.BatchOperationTermination").msgclass
        BatchOperationSignal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.batch.v1.BatchOperationSignal").msgclass
        BatchOperationCancellation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.batch.v1.BatchOperationCancellation").msgclass
        BatchOperationDeletion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.batch.v1.BatchOperationDeletion").msgclass
      end
    end
  end
end
