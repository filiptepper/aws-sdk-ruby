# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/ec2.rb'
require 'aws-sdk-ec2/plugins/copy_encrypted_snapshot.rb'
require 'aws-sdk-ec2/plugins/region_validation.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:ec2)

module Aws::EC2
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :ec2

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::EC2)
    add_plugin(Aws::EC2::Plugins::CopyEncryptedSnapshot)
    add_plugin(Aws::EC2::Plugins::RegionValidation)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Accepts the Convertible Reserved Instance exchange quote described in
    # the GetReservedInstancesExchangeQuote call.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<String>] :reserved_instance_ids
    #   The IDs of the Convertible Reserved Instances to exchange for other
    #   Convertible Reserved Instances of the same or higher value.
    #
    # @option params [Array<Types::TargetConfigurationRequest>] :target_configurations
    #   The configurations of the Convertible Reserved Instance offerings that
    #   you are purchasing in this exchange.
    #
    # @return [Types::AcceptReservedInstancesExchangeQuoteResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptReservedInstancesExchangeQuoteResult#exchange_id #exchange_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_reserved_instances_exchange_quote({
    #     dry_run: false,
    #     reserved_instance_ids: ["String"], # required
    #     target_configurations: [
    #       {
    #         instance_count: 1,
    #         offering_id: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.exchange_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptReservedInstancesExchangeQuote AWS API Documentation
    #
    # @overload accept_reserved_instances_exchange_quote(params = {})
    # @param [Hash] params ({})
    def accept_reserved_instances_exchange_quote(params = {}, options = {})
      req = build_request(:accept_reserved_instances_exchange_quote, params)
      req.send_request(options)
    end

    # Accept a VPC peering connection request. To accept a request, the VPC
    # peering connection must be in the `pending-acceptance` state, and you
    # must be the owner of the peer VPC. Use DescribeVpcPeeringConnections
    # to view your outstanding VPC peering connection requests.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #
    # @return [Types::AcceptVpcPeeringConnectionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptVpcPeeringConnectionResult#vpc_peering_connection #vpc_peering_connection} => Types::VpcPeeringConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_vpc_peering_connection({
    #     dry_run: false,
    #     vpc_peering_connection_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_peering_connection.accepter_vpc_info.cidr_block #=> String
    #   resp.vpc_peering_connection.accepter_vpc_info.ipv_6_cidr_block_set #=> Array
    #   resp.vpc_peering_connection.accepter_vpc_info.ipv_6_cidr_block_set[0].ipv_6_cidr_block #=> String
    #   resp.vpc_peering_connection.accepter_vpc_info.owner_id #=> String
    #   resp.vpc_peering_connection.accepter_vpc_info.peering_options.allow_dns_resolution_from_remote_vpc #=> Boolean
    #   resp.vpc_peering_connection.accepter_vpc_info.peering_options.allow_egress_from_local_classic_link_to_remote_vpc #=> Boolean
    #   resp.vpc_peering_connection.accepter_vpc_info.peering_options.allow_egress_from_local_vpc_to_remote_classic_link #=> Boolean
    #   resp.vpc_peering_connection.accepter_vpc_info.vpc_id #=> String
    #   resp.vpc_peering_connection.expiration_time #=> Time
    #   resp.vpc_peering_connection.requester_vpc_info.cidr_block #=> String
    #   resp.vpc_peering_connection.requester_vpc_info.ipv_6_cidr_block_set #=> Array
    #   resp.vpc_peering_connection.requester_vpc_info.ipv_6_cidr_block_set[0].ipv_6_cidr_block #=> String
    #   resp.vpc_peering_connection.requester_vpc_info.owner_id #=> String
    #   resp.vpc_peering_connection.requester_vpc_info.peering_options.allow_dns_resolution_from_remote_vpc #=> Boolean
    #   resp.vpc_peering_connection.requester_vpc_info.peering_options.allow_egress_from_local_classic_link_to_remote_vpc #=> Boolean
    #   resp.vpc_peering_connection.requester_vpc_info.peering_options.allow_egress_from_local_vpc_to_remote_classic_link #=> Boolean
    #   resp.vpc_peering_connection.requester_vpc_info.vpc_id #=> String
    #   resp.vpc_peering_connection.status.code #=> String, one of "initiating-request", "pending-acceptance", "active", "deleted", "rejected", "failed", "expired", "provisioning", "deleting"
    #   resp.vpc_peering_connection.status.message #=> String
    #   resp.vpc_peering_connection.tags #=> Array
    #   resp.vpc_peering_connection.tags[0].key #=> String
    #   resp.vpc_peering_connection.tags[0].value #=> String
    #   resp.vpc_peering_connection.vpc_peering_connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptVpcPeeringConnection AWS API Documentation
    #
    # @overload accept_vpc_peering_connection(params = {})
    # @param [Hash] params ({})
    def accept_vpc_peering_connection(params = {}, options = {})
      req = build_request(:accept_vpc_peering_connection, params)
      req.send_request(options)
    end

    # Acquires an Elastic IP address.
    #
    # An Elastic IP address is for use either in the EC2-Classic platform or
    # in a VPC. For more information, see [Elastic IP Addresses][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #
    # @option params [String] :domain
    #   Set to `vpc` to allocate the address for use with instances in a VPC.
    #
    #   Default: The address is for use with instances in EC2-Classic.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::AllocateAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AllocateAddressResult#public_ip #public_ip} => String
    #   * {Types::AllocateAddressResult#allocation_id #allocation_id} => String
    #   * {Types::AllocateAddressResult#domain #domain} => String
    #
    #
    # @example Example: To allocate an Elastic IP address for EC2-VPC
    #
    #   # This example allocates an Elastic IP address to use with an instance in a VPC.
    #
    #   resp = client.allocate_address({
    #     domain: "vpc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     allocation_id: "eipalloc-64d5890a", 
    #     domain: "vpc", 
    #     public_ip: "203.0.113.0", 
    #   }
    #
    # @example Example: To allocate an Elastic IP address for EC2-Classic
    #
    #   # This example allocates an Elastic IP address to use with an instance in EC2-Classic.
    #
    #   resp = client.allocate_address({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     domain: "standard", 
    #     public_ip: "198.51.100.0", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_address({
    #     domain: "vpc", # accepts vpc, standard
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.public_ip #=> String
    #   resp.allocation_id #=> String
    #   resp.domain #=> String, one of "vpc", "standard"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AllocateAddress AWS API Documentation
    #
    # @overload allocate_address(params = {})
    # @param [Hash] params ({})
    def allocate_address(params = {}, options = {})
      req = build_request(:allocate_address, params)
      req.send_request(options)
    end

    # Allocates a Dedicated Host to your account. At minimum you need to
    # specify the instance size type, Availability Zone, and quantity of
    # hosts you want to allocate.
    #
    # @option params [String] :auto_placement
    #   This is enabled by default. This property allows instances to be
    #   automatically placed onto available Dedicated Hosts, when you are
    #   launching instances without specifying a host ID.
    #
    #   Default: Enabled
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone for the Dedicated Hosts.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [How to Ensure Idempotency][1]
    #   in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :instance_type
    #   Specify the instance type that you want your Dedicated Hosts to be
    #   configured for. When you specify the instance type, that is the only
    #   instance type that you can launch onto that host.
    #
    # @option params [required, Integer] :quantity
    #   The number of Dedicated Hosts you want to allocate to your account
    #   with these parameters.
    #
    # @return [Types::AllocateHostsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AllocateHostsResult#host_ids #host_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_hosts({
    #     auto_placement: "on", # accepts on, off
    #     availability_zone: "String", # required
    #     client_token: "String",
    #     instance_type: "String", # required
    #     quantity: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.host_ids #=> Array
    #   resp.host_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AllocateHosts AWS API Documentation
    #
    # @overload allocate_hosts(params = {})
    # @param [Hash] params ({})
    def allocate_hosts(params = {}, options = {})
      req = build_request(:allocate_hosts, params)
      req.send_request(options)
    end

    # Assigns one or more IPv6 addresses to the specified network interface.
    # You can specify one or more specific IPv6 addresses, or you can
    # specify the number of IPv6 addresses to be automatically assigned from
    # within the subnet's IPv6 CIDR block range. You can assign as many
    # IPv6 addresses to a network interface as you can assign private IPv4
    # addresses, and the limit varies per instance type. For information,
    # see [IP Addresses Per Network Interface Per Instance Type][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI
    #
    # @option params [Integer] :ipv_6_address_count
    #   The number of IPv6 addresses to assign to the network interface.
    #   Amazon EC2 automatically selects the IPv6 addresses from the subnet
    #   range. You can't use this option if specifying specific IPv6
    #   addresses.
    #
    # @option params [Array<String>] :ipv_6_addresses
    #   One or more specific IPv6 addresses to be assigned to the network
    #   interface. You can't use this option if you're specifying a number
    #   of IPv6 addresses.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @return [Types::AssignIpv6AddressesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssignIpv6AddressesResult#assigned_ipv_6_addresses #assigned_ipv_6_addresses} => Array&lt;String&gt;
    #   * {Types::AssignIpv6AddressesResult#network_interface_id #network_interface_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_ipv_6_addresses({
    #     ipv_6_address_count: 1,
    #     ipv_6_addresses: ["String"],
    #     network_interface_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.assigned_ipv_6_addresses #=> Array
    #   resp.assigned_ipv_6_addresses[0] #=> String
    #   resp.network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssignIpv6Addresses AWS API Documentation
    #
    # @overload assign_ipv_6_addresses(params = {})
    # @param [Hash] params ({})
    def assign_ipv_6_addresses(params = {}, options = {})
      req = build_request(:assign_ipv_6_addresses, params)
      req.send_request(options)
    end

    # Assigns one or more secondary private IP addresses to the specified
    # network interface. You can specify one or more specific secondary IP
    # addresses, or you can specify the number of secondary IP addresses to
    # be automatically assigned within the subnet's CIDR block range. The
    # number of secondary IP addresses that you can assign to an instance
    # varies by instance type. For information about instance types, see
    # [Instance Types][1] in the *Amazon Elastic Compute Cloud User Guide*.
    # For more information about Elastic IP addresses, see [Elastic IP
    # Addresses][2] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    # AssignPrivateIpAddresses is available only in EC2-VPC.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #
    # @option params [Boolean] :allow_reassignment
    #   Indicates whether to allow an IP address that is already assigned to
    #   another network interface or instance to be reassigned to the
    #   specified network interface.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @option params [Array<String>] :private_ip_addresses
    #   One or more IP addresses to be assigned as a secondary private IP
    #   address to the network interface. You can't specify this parameter
    #   when also specifying a number of secondary IP addresses.
    #
    #   If you don't specify an IP address, Amazon EC2 automatically selects
    #   an IP address within the subnet range.
    #
    # @option params [Integer] :secondary_private_ip_address_count
    #   The number of secondary IP addresses to assign to the network
    #   interface. You can't specify this parameter when also specifying
    #   private IP addresses.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To assign a specific secondary private IP address to an interface
    #
    #   # This example assigns the specified secondary private IP address to the specified network interface.
    #
    #   resp = client.assign_private_ip_addresses({
    #     network_interface_id: "eni-e5aa89a3", 
    #     private_ip_addresses: [
    #       "10.0.0.82", 
    #     ], 
    #   })
    #
    # @example Example: To assign secondary private IP addresses that Amazon EC2 selects to an interface
    #
    #   # This example assigns two secondary private IP addresses to the specified network interface. Amazon EC2 automatically assigns these IP addresses from the available IP addresses in the CIDR block range of the subnet the network interface is associated with.
    #
    #   resp = client.assign_private_ip_addresses({
    #     network_interface_id: "eni-e5aa89a3", 
    #     secondary_private_ip_address_count: 2, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_private_ip_addresses({
    #     allow_reassignment: false,
    #     network_interface_id: "String", # required
    #     private_ip_addresses: ["String"],
    #     secondary_private_ip_address_count: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssignPrivateIpAddresses AWS API Documentation
    #
    # @overload assign_private_ip_addresses(params = {})
    # @param [Hash] params ({})
    def assign_private_ip_addresses(params = {}, options = {})
      req = build_request(:assign_private_ip_addresses, params)
      req.send_request(options)
    end

    # Associates an Elastic IP address with an instance or a network
    # interface.
    #
    # An Elastic IP address is for use in either the EC2-Classic platform or
    # in a VPC. For more information, see [Elastic IP Addresses][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    # \[EC2-Classic, VPC in an EC2-VPC-only account\] If the Elastic IP
    # address is already associated with a different instance, it is
    # disassociated from that instance and associated with the specified
    # instance. If you associate an Elastic IP address with an instance that
    # has an existing Elastic IP address, the existing address is
    # disassociated from the instance, but remains allocated to your
    # account.
    #
    # \[VPC in an EC2-Classic account\] If you don't specify a private IP
    # address, the Elastic IP address is associated with the primary IP
    # address. If the Elastic IP address is already associated with a
    # different instance or a network interface, you get an error unless you
    # allow reassociation. You cannot associate an Elastic IP address with
    # an instance or network interface that has an existing Elastic IP
    # address.
    #
    # This is an idempotent operation. If you perform the operation more
    # than once, Amazon EC2 doesn't return an error, and you may be charged
    # for each time the Elastic IP address is remapped to the same instance.
    # For more information, see the *Elastic IP Addresses* section of
    # [Amazon EC2 Pricing][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    # [2]: http://aws.amazon.com/ec2/pricing/
    #
    # @option params [String] :allocation_id
    #   \[EC2-VPC\] The allocation ID. This is required for EC2-VPC.
    #
    # @option params [String] :instance_id
    #   The ID of the instance. This is required for EC2-Classic. For EC2-VPC,
    #   you can specify either the instance ID or the network interface ID,
    #   but not both. The operation fails if you specify an instance ID unless
    #   exactly one network interface is attached.
    #
    # @option params [String] :public_ip
    #   The Elastic IP address. This is required for EC2-Classic.
    #
    # @option params [Boolean] :allow_reassociation
    #   \[EC2-VPC\] For a VPC in an EC2-Classic account, specify true to allow
    #   an Elastic IP address that is already associated with an instance or
    #   network interface to be reassociated with the specified instance or
    #   network interface. Otherwise, the operation fails. In a VPC in an
    #   EC2-VPC-only account, reassociation is automatic, therefore you can
    #   specify false to ensure the operation fails if the Elastic IP address
    #   is already associated with another resource.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :network_interface_id
    #   \[EC2-VPC\] The ID of the network interface. If the instance has more
    #   than one network interface, you must specify a network interface ID.
    #
    # @option params [String] :private_ip_address
    #   \[EC2-VPC\] The primary or secondary private IP address to associate
    #   with the Elastic IP address. If no private IP address is specified,
    #   the Elastic IP address is associated with the primary private IP
    #   address.
    #
    # @return [Types::AssociateAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAddressResult#association_id #association_id} => String
    #
    #
    # @example Example: To associate an Elastic IP address in EC2-VPC
    #
    #   # This example associates the specified Elastic IP address with the specified instance in a VPC.
    #
    #   resp = client.associate_address({
    #     allocation_id: "eipalloc-64d5890a", 
    #     instance_id: "i-0b263919b6498b123", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     association_id: "eipassoc-2bebb745", 
    #   }
    #
    # @example Example: To associate an Elastic IP address with a network interface
    #
    #   # This example associates the specified Elastic IP address with the specified network interface.
    #
    #   resp = client.associate_address({
    #     allocation_id: "eipalloc-64d5890a", 
    #     network_interface_id: "eni-1a2b3c4d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     association_id: "eipassoc-2bebb745", 
    #   }
    #
    # @example Example: To associate an Elastic IP address in EC2-Classic
    #
    #   # This example associates an Elastic IP address with an instance in EC2-Classic.
    #
    #   resp = client.associate_address({
    #     instance_id: "i-07ffe74c7330ebf53", 
    #     public_ip: "198.51.100.0", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_address({
    #     allocation_id: "String",
    #     instance_id: "String",
    #     public_ip: "String",
    #     allow_reassociation: false,
    #     dry_run: false,
    #     network_interface_id: "String",
    #     private_ip_address: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateAddress AWS API Documentation
    #
    # @overload associate_address(params = {})
    # @param [Hash] params ({})
    def associate_address(params = {}, options = {})
      req = build_request(:associate_address, params)
      req.send_request(options)
    end

    # Associates a set of DHCP options (that you've previously created)
    # with the specified VPC, or associates no DHCP options with the VPC.
    #
    # After you associate the options with the VPC, any existing instances
    # and all new instances that you launch in that VPC use the options. You
    # don't need to restart or relaunch the instances. They automatically
    # pick up the changes within a few hours, depending on how frequently
    # the instance renews its DHCP lease. You can explicitly renew the lease
    # using the operating system on the instance.
    #
    # For more information, see [DHCP Options Sets][1] in the *Amazon
    # Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html
    #
    # @option params [required, String] :dhcp_options_id
    #   The ID of the DHCP options set, or `default` to associate no DHCP
    #   options with the VPC.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To associate a DHCP options set with a VPC
    #
    #   # This example associates the specified DHCP options set with the specified VPC.
    #
    #   resp = client.associate_dhcp_options({
    #     dhcp_options_id: "dopt-d9070ebb", 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    # @example Example: To associate the default DHCP options set with a VPC
    #
    #   # This example associates the default DHCP options set with the specified VPC.
    #
    #   resp = client.associate_dhcp_options({
    #     dhcp_options_id: "default", 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_dhcp_options({
    #     dhcp_options_id: "String", # required
    #     vpc_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateDhcpOptions AWS API Documentation
    #
    # @overload associate_dhcp_options(params = {})
    # @param [Hash] params ({})
    def associate_dhcp_options(params = {}, options = {})
      req = build_request(:associate_dhcp_options, params)
      req.send_request(options)
    end

    # Associates an IAM instance profile with a running or stopped instance.
    # You cannot associate more than one IAM instance profile with an
    # instance.
    #
    # @option params [required, Types::IamInstanceProfileSpecification] :iam_instance_profile
    #   The IAM instance profile.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @return [Types::AssociateIamInstanceProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateIamInstanceProfileResult#iam_instance_profile_association #iam_instance_profile_association} => Types::IamInstanceProfileAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_iam_instance_profile({
    #     iam_instance_profile: { # required
    #       arn: "String",
    #       name: "String",
    #     },
    #     instance_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_instance_profile_association.association_id #=> String
    #   resp.iam_instance_profile_association.instance_id #=> String
    #   resp.iam_instance_profile_association.iam_instance_profile.arn #=> String
    #   resp.iam_instance_profile_association.iam_instance_profile.id #=> String
    #   resp.iam_instance_profile_association.state #=> String, one of "associating", "associated", "disassociating", "disassociated"
    #   resp.iam_instance_profile_association.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateIamInstanceProfile AWS API Documentation
    #
    # @overload associate_iam_instance_profile(params = {})
    # @param [Hash] params ({})
    def associate_iam_instance_profile(params = {}, options = {})
      req = build_request(:associate_iam_instance_profile, params)
      req.send_request(options)
    end

    # Associates a subnet with a route table. The subnet and route table
    # must be in the same VPC. This association causes traffic originating
    # from the subnet to be routed according to the routes in the route
    # table. The action returns an association ID, which you need in order
    # to disassociate the route table from the subnet later. A route table
    # can be associated with multiple subnets.
    #
    # For more information about route tables, see [Route Tables][1] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :route_table_id
    #   The ID of the route table.
    #
    # @option params [required, String] :subnet_id
    #   The ID of the subnet.
    #
    # @return [Types::AssociateRouteTableResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateRouteTableResult#association_id #association_id} => String
    #
    #
    # @example Example: To associate a route table with a subnet
    #
    #   # This example associates the specified route table with the specified subnet.
    #
    #   resp = client.associate_route_table({
    #     route_table_id: "rtb-22574640", 
    #     subnet_id: "subnet-9d4a7b6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     association_id: "rtbassoc-781d0d1a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_route_table({
    #     dry_run: false,
    #     route_table_id: "String", # required
    #     subnet_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateRouteTable AWS API Documentation
    #
    # @overload associate_route_table(params = {})
    # @param [Hash] params ({})
    def associate_route_table(params = {}, options = {})
      req = build_request(:associate_route_table, params)
      req.send_request(options)
    end

    # Associates a CIDR block with your subnet. You can only associate a
    # single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have
    # a prefix length of /64.
    #
    # @option params [required, String] :ipv_6_cidr_block
    #   The IPv6 CIDR block for your subnet. The subnet must have a /64 prefix
    #   length.
    #
    # @option params [required, String] :subnet_id
    #   The ID of your subnet.
    #
    # @return [Types::AssociateSubnetCidrBlockResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateSubnetCidrBlockResult#ipv_6_cidr_block_association #ipv_6_cidr_block_association} => Types::SubnetIpv6CidrBlockAssociation
    #   * {Types::AssociateSubnetCidrBlockResult#subnet_id #subnet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_subnet_cidr_block({
    #     ipv_6_cidr_block: "String", # required
    #     subnet_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ipv_6_cidr_block_association.association_id #=> String
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block #=> String
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block_state.status_message #=> String
    #   resp.subnet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateSubnetCidrBlock AWS API Documentation
    #
    # @overload associate_subnet_cidr_block(params = {})
    # @param [Hash] params ({})
    def associate_subnet_cidr_block(params = {}, options = {})
      req = build_request(:associate_subnet_cidr_block, params)
      req.send_request(options)
    end

    # Associates a CIDR block with your VPC. You can only associate a single
    # Amazon-provided IPv6 CIDR block with your VPC. The IPv6 CIDR block
    # size is fixed at /56.
    #
    # @option params [Boolean] :amazon_provided_ipv_6_cidr_block
    #   Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
    #   for the VPC. You cannot specify the range of IPv6 addresses, or the
    #   size of the CIDR block.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::AssociateVpcCidrBlockResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateVpcCidrBlockResult#ipv_6_cidr_block_association #ipv_6_cidr_block_association} => Types::VpcIpv6CidrBlockAssociation
    #   * {Types::AssociateVpcCidrBlockResult#vpc_id #vpc_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_vpc_cidr_block({
    #     amazon_provided_ipv_6_cidr_block: false,
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ipv_6_cidr_block_association.association_id #=> String
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block #=> String
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block_state.status_message #=> String
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateVpcCidrBlock AWS API Documentation
    #
    # @overload associate_vpc_cidr_block(params = {})
    # @param [Hash] params ({})
    def associate_vpc_cidr_block(params = {}, options = {})
      req = build_request(:associate_vpc_cidr_block, params)
      req.send_request(options)
    end

    # Links an EC2-Classic instance to a ClassicLink-enabled VPC through one
    # or more of the VPC's security groups. You cannot link an EC2-Classic
    # instance to more than one VPC at a time. You can only link an instance
    # that's in the `running` state. An instance is automatically unlinked
    # from a VPC when it's stopped - you can link it to the VPC again when
    # you restart it.
    #
    # After you've linked an instance, you cannot change the VPC security
    # groups that are associated with it. To change the security groups, you
    # must first unlink the instance, and then link it again.
    #
    # Linking your instance to a VPC is sometimes referred to as *attaching*
    # your instance.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<String>] :groups
    #   The ID of one or more of the VPC's security groups. You cannot
    #   specify security groups from a different VPC.
    #
    # @option params [required, String] :instance_id
    #   The ID of an EC2-Classic instance to link to the ClassicLink-enabled
    #   VPC.
    #
    # @option params [required, String] :vpc_id
    #   The ID of a ClassicLink-enabled VPC.
    #
    # @return [Types::AttachClassicLinkVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachClassicLinkVpcResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_classic_link_vpc({
    #     dry_run: false,
    #     groups: ["String"], # required
    #     instance_id: "String", # required
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachClassicLinkVpc AWS API Documentation
    #
    # @overload attach_classic_link_vpc(params = {})
    # @param [Hash] params ({})
    def attach_classic_link_vpc(params = {}, options = {})
      req = build_request(:attach_classic_link_vpc, params)
      req.send_request(options)
    end

    # Attaches an Internet gateway to a VPC, enabling connectivity between
    # the Internet and the VPC. For more information about your VPC and
    # Internet gateway, see the [Amazon Virtual Private Cloud User
    # Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :internet_gateway_id
    #   The ID of the Internet gateway.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach an Internet gateway to a VPC
    #
    #   # This example attaches the specified Internet gateway to the specified VPC.
    #
    #   resp = client.attach_internet_gateway({
    #     internet_gateway_id: "igw-c0a643a9", 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_internet_gateway({
    #     dry_run: false,
    #     internet_gateway_id: "String", # required
    #     vpc_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachInternetGateway AWS API Documentation
    #
    # @overload attach_internet_gateway(params = {})
    # @param [Hash] params ({})
    def attach_internet_gateway(params = {}, options = {})
      req = build_request(:attach_internet_gateway, params)
      req.send_request(options)
    end

    # Attaches a network interface to an instance.
    #
    # @option params [required, Integer] :device_index
    #   The index of the device for the network interface attachment.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @return [Types::AttachNetworkInterfaceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachNetworkInterfaceResult#attachment_id #attachment_id} => String
    #
    #
    # @example Example: To attach a network interface to an instance
    #
    #   # This example attaches the specified network interface to the specified instance.
    #
    #   resp = client.attach_network_interface({
    #     device_index: 1, 
    #     instance_id: "i-1234567890abcdef0", 
    #     network_interface_id: "eni-e5aa89a3", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attachment_id: "eni-attach-66c4350a", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_network_interface({
    #     device_index: 1, # required
    #     dry_run: false,
    #     instance_id: "String", # required
    #     network_interface_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachNetworkInterface AWS API Documentation
    #
    # @overload attach_network_interface(params = {})
    # @param [Hash] params ({})
    def attach_network_interface(params = {}, options = {})
      req = build_request(:attach_network_interface, params)
      req.send_request(options)
    end

    # Attaches an EBS volume to a running or stopped instance and exposes it
    # to the instance with the specified device name.
    #
    # Encrypted EBS volumes may only be attached to instances that support
    # Amazon EBS encryption. For more information, see [Amazon EBS
    # Encryption][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    # For a list of supported device names, see [Attaching an EBS Volume to
    # an Instance][2]. Any device names that aren't reserved for instance
    # store volumes can be used for EBS volumes. For more information, see
    # [Amazon EC2 Instance Store][3] in the *Amazon Elastic Compute Cloud
    # User Guide*.
    #
    # If a volume has an AWS Marketplace product code:
    #
    # * The volume can be attached only to a stopped instance.
    #
    # * AWS Marketplace product codes are copied from the volume to the
    #   instance.
    #
    # * You must be subscribed to the product.
    #
    # * The instance type and operating system of the instance must support
    #   the product. For example, you can't detach a volume from a Windows
    #   instance and attach it to a Linux instance.
    #
    # For an overview of the AWS Marketplace, see [Introducing AWS
    # Marketplace][4].
    #
    # For more information about EBS volumes, see [Attaching Amazon EBS
    # Volumes][2] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html
    # [3]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html
    # [4]: https://aws.amazon.com/marketplace/help/200900000
    #
    # @option params [required, String] :device
    #   The device name to expose to the instance (for example, `/dev/sdh` or
    #   `xvdh`).
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, String] :volume_id
    #   The ID of the EBS volume. The volume and instance must be within the
    #   same Availability Zone.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::VolumeAttachment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VolumeAttachment#attach_time #attach_time} => Time
    #   * {Types::VolumeAttachment#device #device} => String
    #   * {Types::VolumeAttachment#instance_id #instance_id} => String
    #   * {Types::VolumeAttachment#state #state} => String
    #   * {Types::VolumeAttachment#volume_id #volume_id} => String
    #   * {Types::VolumeAttachment#delete_on_termination #delete_on_termination} => Boolean
    #
    #
    # @example Example: To attach a volume to an instance
    #
    #   # This example attaches a volume (``vol-1234567890abcdef0``) to an instance (``i-01474ef662b89480``) as ``/dev/sdf``.
    #
    #   resp = client.attach_volume({
    #     device: "/dev/sdf", 
    #     instance_id: "i-01474ef662b89480", 
    #     volume_id: "vol-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attach_time: Time.parse("2016-08-29T18:52:32.724Z"), 
    #     device: "/dev/sdf", 
    #     instance_id: "i-01474ef662b89480", 
    #     state: "attaching", 
    #     volume_id: "vol-1234567890abcdef0", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_volume({
    #     device: "String", # required
    #     instance_id: "String", # required
    #     volume_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.attach_time #=> Time
    #   resp.device #=> String
    #   resp.instance_id #=> String
    #   resp.state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.volume_id #=> String
    #   resp.delete_on_termination #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachVolume AWS API Documentation
    #
    # @overload attach_volume(params = {})
    # @param [Hash] params ({})
    def attach_volume(params = {}, options = {})
      req = build_request(:attach_volume, params)
      req.send_request(options)
    end

    # Attaches a virtual private gateway to a VPC. You can attach one
    # virtual private gateway to one VPC at a time.
    #
    # For more information, see [Adding a Hardware Virtual Private Gateway
    # to Your VPC][1] in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @option params [required, String] :vpn_gateway_id
    #   The ID of the virtual private gateway.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::AttachVpnGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachVpnGatewayResult#vpc_attachment #vpc_attachment} => Types::VpcAttachment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_vpn_gateway({
    #     vpc_id: "String", # required
    #     vpn_gateway_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_attachment.state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.vpc_attachment.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachVpnGateway AWS API Documentation
    #
    # @overload attach_vpn_gateway(params = {})
    # @param [Hash] params ({})
    def attach_vpn_gateway(params = {}, options = {})
      req = build_request(:attach_vpn_gateway, params)
      req.send_request(options)
    end

    # \[EC2-VPC only\] Adds one or more egress rules to a security group for
    # use with a VPC. Specifically, this action permits instances to send
    # traffic to one or more destination IPv4 or IPv6 CIDR address ranges,
    # or to one or more destination security groups for the same VPC. This
    # action doesn't apply to security groups for use in EC2-Classic. For
    # more information, see [Security Groups for Your VPC][1] in the *Amazon
    # Virtual Private Cloud User Guide*. For more information about security
    # group limits, see [Amazon VPC Limits][2].
    #
    # Each rule consists of the protocol (for example, TCP), plus either a
    # CIDR range or a source group. For the TCP and UDP protocols, you must
    # also specify the destination port or port range. For the ICMP
    # protocol, you must also specify the ICMP type and code. You can use -1
    # for the type or code to mean all types or all codes.
    #
    # Rule changes are propagated to affected instances as quickly as
    # possible. However, a small delay might occur.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    # [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :group_id
    #   The ID of the security group.
    #
    # @option params [Array<Types::IpPermission>] :ip_permissions
    #   A set of IP permissions. You can't specify a destination security
    #   group and a CIDR IP address range.
    #
    # @option params [String] :cidr_ip
    #   The CIDR IPv4 address range. We recommend that you specify the CIDR
    #   range in a set of IP permissions instead.
    #
    # @option params [Integer] :from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    #
    # @option params [String] :ip_protocol
    #   The IP protocol name or number. We recommend that you specify the
    #   protocol in a set of IP permissions instead.
    #
    # @option params [Integer] :to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    #
    # @option params [String] :source_security_group_name
    #   The name of a destination security group. To authorize outbound access
    #   to a destination security group, we recommend that you use a set of IP
    #   permissions instead.
    #
    # @option params [String] :source_security_group_owner_id
    #   The AWS account number for a destination security group. To authorize
    #   outbound access to a destination security group, we recommend that you
    #   use a set of IP permissions instead.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_security_group_egress({
    #     dry_run: false,
    #     group_id: "String", # required
    #     ip_permissions: [
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     cidr_ip: "String",
    #     from_port: 1,
    #     ip_protocol: "String",
    #     to_port: 1,
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AuthorizeSecurityGroupEgress AWS API Documentation
    #
    # @overload authorize_security_group_egress(params = {})
    # @param [Hash] params ({})
    def authorize_security_group_egress(params = {}, options = {})
      req = build_request(:authorize_security_group_egress, params)
      req.send_request(options)
    end

    # Adds one or more ingress rules to a security group.
    #
    # Rule changes are propagated to instances within the security group as
    # quickly as possible. However, a small delay might occur.
    #
    # \[EC2-Classic\] This action gives one or more IPv4 CIDR address ranges
    # permission to access a security group in your account, or gives one or
    # more security groups (called the *source groups*) permission to access
    # a security group for your account. A source group can be for your own
    # AWS account, or another. You can have up to 100 rules per group.
    #
    # \[EC2-VPC\] This action gives one or more IPv4 or IPv6 CIDR address
    # ranges permission to access a security group in your VPC, or gives one
    # or more other security groups (called the *source groups*) permission
    # to access a security group for your VPC. The security groups must all
    # be for the same VPC or a peer VPC in a VPC peering connection. For
    # more information about VPC security group limits, see [Amazon VPC
    # Limits][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html
    #
    # @option params [String] :cidr_ip
    #   The CIDR IPv4 address range. You can't specify this parameter when
    #   specifying a source security group.
    #
    # @option params [Integer] :from_port
    #   The start of port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number. For the ICMP/ICMPv6 type number, use `-1` to
    #   specify all types.
    #
    # @option params [String] :group_id
    #   The ID of the security group. Required for a nondefault VPC.
    #
    # @option params [String] :group_name
    #   \[EC2-Classic, default VPC\] The name of the security group.
    #
    # @option params [Array<Types::IpPermission>] :ip_permissions
    #   A set of IP permissions. Can be used to specify multiple rules in a
    #   single command.
    #
    # @option params [String] :ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]). (VPC only) Use `-1` to specify all protocols. If you
    #   specify `-1`, or a protocol number other than `tcp`, `udp`, `icmp`, or
    #   `58` (ICMPv6), traffic on all ports is allowed, regardless of any
    #   ports you specify. For `tcp`, `udp`, and `icmp`, you must specify a
    #   port range. For protocol `58` (ICMPv6), you can optionally specify a
    #   port range; if you don't, traffic for all types and codes is allowed.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #
    # @option params [String] :source_security_group_name
    #   \[EC2-Classic, default VPC\] The name of the source security group.
    #   You can't specify this parameter in combination with the following
    #   parameters: the CIDR IP address range, the start of the port range,
    #   the IP protocol, and the end of the port range. Creates rules that
    #   grant full ICMP, UDP, and TCP access. To create a rule with a specific
    #   IP protocol and port range, use a set of IP permissions instead. For
    #   EC2-VPC, the source security group must be in the same VPC.
    #
    # @option params [String] :source_security_group_owner_id
    #   \[EC2-Classic\] The AWS account number for the source security group,
    #   if the source security group is in a different account. You can't
    #   specify this parameter in combination with the following parameters:
    #   the CIDR IP address range, the IP protocol, the start of the port
    #   range, and the end of the port range. Creates rules that grant full
    #   ICMP, UDP, and TCP access. To create a rule with a specific IP
    #   protocol and port range, use a set of IP permissions instead.
    #
    # @option params [Integer] :to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6
    #   code number. For the ICMP/ICMPv6 code number, use `-1` to specify all
    #   codes.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_security_group_ingress({
    #     cidr_ip: "String",
    #     from_port: 1,
    #     group_id: "String",
    #     group_name: "String",
    #     ip_permissions: [
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     ip_protocol: "String",
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #     to_port: 1,
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AuthorizeSecurityGroupIngress AWS API Documentation
    #
    # @overload authorize_security_group_ingress(params = {})
    # @param [Hash] params ({})
    def authorize_security_group_ingress(params = {}, options = {})
      req = build_request(:authorize_security_group_ingress, params)
      req.send_request(options)
    end

    # Bundles an Amazon instance store-backed Windows instance.
    #
    # During bundling, only the root device volume (C:\\) is bundled. Data
    # on other instance store volumes is not preserved.
    #
    # <note markdown="1"> This action is not applicable for Linux/Unix instances or Windows
    # instances that are backed by Amazon EBS.
    #
    #  </note>
    #
    # For more information, see [Creating an Instance Store-Backed Windows
    # AMI][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/Creating_InstanceStoreBacked_WinAMI.html
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance to bundle.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Required: Yes
    #
    # @option params [required, Types::Storage] :storage
    #   The bucket in which to store the AMI. You can specify a bucket that
    #   you already own or a new bucket that Amazon EC2 creates on your
    #   behalf. If you specify a bucket that belongs to someone else, Amazon
    #   EC2 returns an error.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::BundleInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BundleInstanceResult#bundle_task #bundle_task} => Types::BundleTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.bundle_instance({
    #     instance_id: "String", # required
    #     storage: { # required
    #       s3: {
    #         aws_access_key_id: "String",
    #         bucket: "String",
    #         prefix: "String",
    #         upload_policy: "data",
    #         upload_policy_signature: "String",
    #       },
    #     },
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bundle_task.bundle_id #=> String
    #   resp.bundle_task.bundle_task_error.code #=> String
    #   resp.bundle_task.bundle_task_error.message #=> String
    #   resp.bundle_task.instance_id #=> String
    #   resp.bundle_task.progress #=> String
    #   resp.bundle_task.start_time #=> Time
    #   resp.bundle_task.state #=> String, one of "pending", "waiting-for-shutdown", "bundling", "storing", "cancelling", "complete", "failed"
    #   resp.bundle_task.storage.s3.aws_access_key_id #=> String
    #   resp.bundle_task.storage.s3.bucket #=> String
    #   resp.bundle_task.storage.s3.prefix #=> String
    #   resp.bundle_task.storage.s3.upload_policy #=> String
    #   resp.bundle_task.storage.s3.upload_policy_signature #=> String
    #   resp.bundle_task.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/BundleInstance AWS API Documentation
    #
    # @overload bundle_instance(params = {})
    # @param [Hash] params ({})
    def bundle_instance(params = {}, options = {})
      req = build_request(:bundle_instance, params)
      req.send_request(options)
    end

    # Cancels a bundling operation for an instance store-backed Windows
    # instance.
    #
    # @option params [required, String] :bundle_id
    #   The ID of the bundle task.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CancelBundleTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelBundleTaskResult#bundle_task #bundle_task} => Types::BundleTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_bundle_task({
    #     bundle_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bundle_task.bundle_id #=> String
    #   resp.bundle_task.bundle_task_error.code #=> String
    #   resp.bundle_task.bundle_task_error.message #=> String
    #   resp.bundle_task.instance_id #=> String
    #   resp.bundle_task.progress #=> String
    #   resp.bundle_task.start_time #=> Time
    #   resp.bundle_task.state #=> String, one of "pending", "waiting-for-shutdown", "bundling", "storing", "cancelling", "complete", "failed"
    #   resp.bundle_task.storage.s3.aws_access_key_id #=> String
    #   resp.bundle_task.storage.s3.bucket #=> String
    #   resp.bundle_task.storage.s3.prefix #=> String
    #   resp.bundle_task.storage.s3.upload_policy #=> String
    #   resp.bundle_task.storage.s3.upload_policy_signature #=> String
    #   resp.bundle_task.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelBundleTask AWS API Documentation
    #
    # @overload cancel_bundle_task(params = {})
    # @param [Hash] params ({})
    def cancel_bundle_task(params = {}, options = {})
      req = build_request(:cancel_bundle_task, params)
      req.send_request(options)
    end

    # Cancels an active conversion task. The task can be the import of an
    # instance or volume. The action removes all artifacts of the
    # conversion, including a partially uploaded volume or instance. If the
    # conversion is complete or is in the process of transferring the final
    # disk image, the command fails and returns an exception.
    #
    # For more information, see [Importing a Virtual Machine Using the
    # Amazon EC2 CLI][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html
    #
    # @option params [required, String] :conversion_task_id
    #   The ID of the conversion task.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :reason_message
    #   The reason for canceling the conversion task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_conversion_task({
    #     conversion_task_id: "String", # required
    #     dry_run: false,
    #     reason_message: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelConversionTask AWS API Documentation
    #
    # @overload cancel_conversion_task(params = {})
    # @param [Hash] params ({})
    def cancel_conversion_task(params = {}, options = {})
      req = build_request(:cancel_conversion_task, params)
      req.send_request(options)
    end

    # Cancels an active export task. The request removes all artifacts of
    # the export, including any partially-created Amazon S3 objects. If the
    # export task is complete or is in the process of transferring the final
    # disk image, the command fails and returns an error.
    #
    # @option params [required, String] :export_task_id
    #   The ID of the export task. This is the ID returned by
    #   `CreateInstanceExportTask`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_export_task({
    #     export_task_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelExportTask AWS API Documentation
    #
    # @overload cancel_export_task(params = {})
    # @param [Hash] params ({})
    def cancel_export_task(params = {}, options = {})
      req = build_request(:cancel_export_task, params)
      req.send_request(options)
    end

    # Cancels an in-process import virtual machine or import snapshot task.
    #
    # @option params [String] :cancel_reason
    #   The reason for canceling the task.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :import_task_id
    #   The ID of the import image or import snapshot task to be canceled.
    #
    # @return [Types::CancelImportTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelImportTaskResult#import_task_id #import_task_id} => String
    #   * {Types::CancelImportTaskResult#previous_state #previous_state} => String
    #   * {Types::CancelImportTaskResult#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_import_task({
    #     cancel_reason: "String",
    #     dry_run: false,
    #     import_task_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_task_id #=> String
    #   resp.previous_state #=> String
    #   resp.state #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelImportTask AWS API Documentation
    #
    # @overload cancel_import_task(params = {})
    # @param [Hash] params ({})
    def cancel_import_task(params = {}, options = {})
      req = build_request(:cancel_import_task, params)
      req.send_request(options)
    end

    # Cancels the specified Reserved Instance listing in the Reserved
    # Instance Marketplace.
    #
    # For more information, see [Reserved Instance Marketplace][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
    #
    # @option params [required, String] :reserved_instances_listing_id
    #   The ID of the Reserved Instance listing.
    #
    # @return [Types::CancelReservedInstancesListingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelReservedInstancesListingResult#reserved_instances_listings #reserved_instances_listings} => Array&lt;Types::ReservedInstancesListing&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_reserved_instances_listing({
    #     reserved_instances_listing_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instances_listings #=> Array
    #   resp.reserved_instances_listings[0].client_token #=> String
    #   resp.reserved_instances_listings[0].create_date #=> Time
    #   resp.reserved_instances_listings[0].instance_counts #=> Array
    #   resp.reserved_instances_listings[0].instance_counts[0].instance_count #=> Integer
    #   resp.reserved_instances_listings[0].instance_counts[0].state #=> String, one of "available", "sold", "cancelled", "pending"
    #   resp.reserved_instances_listings[0].price_schedules #=> Array
    #   resp.reserved_instances_listings[0].price_schedules[0].active #=> Boolean
    #   resp.reserved_instances_listings[0].price_schedules[0].currency_code #=> String, one of "USD"
    #   resp.reserved_instances_listings[0].price_schedules[0].price #=> Float
    #   resp.reserved_instances_listings[0].price_schedules[0].term #=> Integer
    #   resp.reserved_instances_listings[0].reserved_instances_id #=> String
    #   resp.reserved_instances_listings[0].reserved_instances_listing_id #=> String
    #   resp.reserved_instances_listings[0].status #=> String, one of "active", "pending", "cancelled", "closed"
    #   resp.reserved_instances_listings[0].status_message #=> String
    #   resp.reserved_instances_listings[0].tags #=> Array
    #   resp.reserved_instances_listings[0].tags[0].key #=> String
    #   resp.reserved_instances_listings[0].tags[0].value #=> String
    #   resp.reserved_instances_listings[0].update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelReservedInstancesListing AWS API Documentation
    #
    # @overload cancel_reserved_instances_listing(params = {})
    # @param [Hash] params ({})
    def cancel_reserved_instances_listing(params = {}, options = {})
      req = build_request(:cancel_reserved_instances_listing, params)
      req.send_request(options)
    end

    # Cancels the specified Spot fleet requests.
    #
    # After you cancel a Spot fleet request, the Spot fleet launches no new
    # Spot instances. You must specify whether the Spot fleet should also
    # terminate its Spot instances. If you terminate the instances, the Spot
    # fleet request enters the `cancelled_terminating` state. Otherwise, the
    # Spot fleet request enters the `cancelled_running` state and the
    # instances continue to run until they are interrupted or you terminate
    # them manually.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<String>] :spot_fleet_request_ids
    #   The IDs of the Spot fleet requests.
    #
    # @option params [required, Boolean] :terminate_instances
    #   Indicates whether to terminate instances for a Spot fleet request if
    #   it is canceled successfully.
    #
    # @return [Types::CancelSpotFleetRequestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelSpotFleetRequestsResponse#successful_fleet_requests #successful_fleet_requests} => Array&lt;Types::CancelSpotFleetRequestsSuccessItem&gt;
    #   * {Types::CancelSpotFleetRequestsResponse#unsuccessful_fleet_requests #unsuccessful_fleet_requests} => Array&lt;Types::CancelSpotFleetRequestsErrorItem&gt;
    #
    #
    # @example Example: To cancel a Spot fleet request
    #
    #   # This example cancels the specified Spot fleet request and terminates its associated Spot Instances.
    #
    #   resp = client.cancel_spot_fleet_requests({
    #     spot_fleet_request_ids: [
    #       "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #     ], 
    #     terminate_instances: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     successful_fleet_requests: [
    #       {
    #         current_spot_fleet_request_state: "cancelled_running", 
    #         previous_spot_fleet_request_state: "active", 
    #         spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To cancel a Spot fleet request without terminating its Spot Instances
    #
    #   # This example cancels the specified Spot fleet request without terminating its associated Spot Instances.
    #
    #   resp = client.cancel_spot_fleet_requests({
    #     spot_fleet_request_ids: [
    #       "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #     ], 
    #     terminate_instances: false, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     successful_fleet_requests: [
    #       {
    #         current_spot_fleet_request_state: "cancelled_terminating", 
    #         previous_spot_fleet_request_state: "active", 
    #         spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_spot_fleet_requests({
    #     dry_run: false,
    #     spot_fleet_request_ids: ["String"], # required
    #     terminate_instances: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_fleet_requests #=> Array
    #   resp.successful_fleet_requests[0].current_spot_fleet_request_state #=> String, one of "submitted", "active", "cancelled", "failed", "cancelled_running", "cancelled_terminating", "modifying"
    #   resp.successful_fleet_requests[0].previous_spot_fleet_request_state #=> String, one of "submitted", "active", "cancelled", "failed", "cancelled_running", "cancelled_terminating", "modifying"
    #   resp.successful_fleet_requests[0].spot_fleet_request_id #=> String
    #   resp.unsuccessful_fleet_requests #=> Array
    #   resp.unsuccessful_fleet_requests[0].error.code #=> String, one of "fleetRequestIdDoesNotExist", "fleetRequestIdMalformed", "fleetRequestNotInCancellableState", "unexpectedError"
    #   resp.unsuccessful_fleet_requests[0].error.message #=> String
    #   resp.unsuccessful_fleet_requests[0].spot_fleet_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotFleetRequests AWS API Documentation
    #
    # @overload cancel_spot_fleet_requests(params = {})
    # @param [Hash] params ({})
    def cancel_spot_fleet_requests(params = {}, options = {})
      req = build_request(:cancel_spot_fleet_requests, params)
      req.send_request(options)
    end

    # Cancels one or more Spot instance requests. Spot instances are
    # instances that Amazon EC2 starts on your behalf when the bid price
    # that you specify exceeds the current Spot price. Amazon EC2
    # periodically sets the Spot price based on available Spot instance
    # capacity and current Spot instance requests. For more information, see
    # [Spot Instance Requests][1] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    # Canceling a Spot instance request does not terminate running Spot
    # instances associated with the request.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<String>] :spot_instance_request_ids
    #   One or more Spot instance request IDs.
    #
    # @return [Types::CancelSpotInstanceRequestsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelSpotInstanceRequestsResult#cancelled_spot_instance_requests #cancelled_spot_instance_requests} => Array&lt;Types::CancelledSpotInstanceRequest&gt;
    #
    #
    # @example Example: To cancel Spot Instance requests
    #
    #   # This example cancels a Spot Instance request.
    #
    #   resp = client.cancel_spot_instance_requests({
    #     spot_instance_request_ids: [
    #       "sir-08b93456", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cancelled_spot_instance_requests: [
    #       {
    #         spot_instance_request_id: "sir-08b93456", 
    #         state: "cancelled", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_spot_instance_requests({
    #     dry_run: false,
    #     spot_instance_request_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cancelled_spot_instance_requests #=> Array
    #   resp.cancelled_spot_instance_requests[0].spot_instance_request_id #=> String
    #   resp.cancelled_spot_instance_requests[0].state #=> String, one of "active", "open", "closed", "cancelled", "completed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotInstanceRequests AWS API Documentation
    #
    # @overload cancel_spot_instance_requests(params = {})
    # @param [Hash] params ({})
    def cancel_spot_instance_requests(params = {}, options = {})
      req = build_request(:cancel_spot_instance_requests, params)
      req.send_request(options)
    end

    # Determines whether a product code is associated with an instance. This
    # action can only be used by the owner of the product code. It is useful
    # when a product code owner needs to verify whether another user's
    # instance is eligible for support.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, String] :product_code
    #   The product code. This must be a product code that you own.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::ConfirmProductInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfirmProductInstanceResult#owner_id #owner_id} => String
    #   * {Types::ConfirmProductInstanceResult#return #return} => Boolean
    #
    #
    # @example Example: To confirm the product instance
    #
    #   # This example determines whether the specified product code is associated with the specified instance.
    #
    #   resp = client.confirm_product_instance({
    #     instance_id: "i-1234567890abcdef0", 
    #     product_code: "774F4FF8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     owner_id: "123456789012", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_product_instance({
    #     instance_id: "String", # required
    #     product_code: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.owner_id #=> String
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ConfirmProductInstance AWS API Documentation
    #
    # @overload confirm_product_instance(params = {})
    # @param [Hash] params ({})
    def confirm_product_instance(params = {}, options = {})
      req = build_request(:confirm_product_instance, params)
      req.send_request(options)
    end

    # Initiates the copy of an AMI from the specified source region to the
    # current region. You specify the destination region by using its
    # endpoint when making the request.
    #
    # For more information about the prerequisites and limits when copying
    # an AMI, see [Copying an AMI][1] in the *Amazon Elastic Compute Cloud
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [How to Ensure Idempotency][1]
    #   in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [String] :description
    #   A description for the new AMI in the destination region.
    #
    # @option params [Boolean] :encrypted
    #   Specifies whether the destination snapshots of the copied image should
    #   be encrypted. The default CMK for EBS is used unless a non-default AWS
    #   Key Management Service (AWS KMS) CMK is specified with `KmsKeyId`. For
    #   more information, see [Amazon EBS Encryption][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #
    # @option params [String] :kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) CMK to use
    #   when encrypting the snapshots of an image during a copy operation.
    #   This parameter is only required if you want to use a non-default CMK;
    #   if this parameter is not specified, the default CMK for EBS is used.
    #   The ARN contains the `arn:aws:kms` namespace, followed by the region
    #   of the CMK, the AWS account ID of the CMK owner, the `key` namespace,
    #   and then the CMK ID. For example,
    #   arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #   The specified CMK must exist in the region that the snapshot is being
    #   copied to. If a `KmsKeyId` is specified, the `Encrypted` flag must
    #   also be set.
    #
    # @option params [required, String] :name
    #   The name of the new AMI in the destination region.
    #
    # @option params [required, String] :source_image_id
    #   The ID of the AMI to copy.
    #
    # @option params [required, String] :source_region
    #   The name of the region that contains the AMI to copy.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CopyImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyImageResult#image_id #image_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_image({
    #     client_token: "String",
    #     description: "String",
    #     encrypted: false,
    #     kms_key_id: "String",
    #     name: "String", # required
    #     source_image_id: "String", # required
    #     source_region: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopyImage AWS API Documentation
    #
    # @overload copy_image(params = {})
    # @param [Hash] params ({})
    def copy_image(params = {}, options = {})
      req = build_request(:copy_image, params)
      req.send_request(options)
    end

    # Copies a point-in-time snapshot of an EBS volume and stores it in
    # Amazon S3. You can copy the snapshot within the same region or from
    # one region to another. You can use the snapshot to create EBS volumes
    # or Amazon Machine Images (AMIs). The snapshot is copied to the
    # regional endpoint that you send the HTTP request to.
    #
    # Copies of encrypted EBS snapshots remain encrypted. Copies of
    # unencrypted snapshots remain unencrypted, unless the `Encrypted` flag
    # is specified during the snapshot copy operation. By default, encrypted
    # snapshot copies use the default AWS Key Management Service (AWS KMS)
    # customer master key (CMK); however, you can specify a non-default CMK
    # with the `KmsKeyId` parameter.
    #
    # <note markdown="1"> To copy an encrypted snapshot that has been shared from another
    # account, you must have permissions for the CMK used to encrypt the
    # snapshot.
    #
    #  </note>
    #
    # <note markdown="1"> Snapshots created by the CopySnapshot action have an arbitrary volume
    # ID that should not be used for any purpose.
    #
    #  </note>
    #
    # For more information, see [Copying an Amazon EBS Snapshot][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html
    #
    # @option params [String] :description
    #   A description for the EBS snapshot.
    #
    # @option params [String] :destination_region
    #   The destination region to use in the `PresignedUrl` parameter of a
    #   snapshot copy operation. This parameter is only valid for specifying
    #   the destination region in a `PresignedUrl` parameter, where it is
    #   required.
    #
    #   <note markdown="1"> `CopySnapshot` sends the snapshot copy to the regional endpoint that
    #   you send the HTTP request to, such as `ec2.us-east-1.amazonaws.com`
    #   (in the AWS CLI, this is specified with the `--region` parameter or
    #   the default region in your AWS configuration file).
    #
    #    </note>
    #
    # @option params [Boolean] :encrypted
    #   Specifies whether the destination snapshot should be encrypted. You
    #   can encrypt a copy of an unencrypted snapshot using this flag, but you
    #   cannot use it to create an unencrypted copy from an encrypted
    #   snapshot. Your default CMK for EBS is used unless a non-default AWS
    #   Key Management Service (AWS KMS) CMK is specified with `KmsKeyId`. For
    #   more information, see [Amazon EBS Encryption][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #
    # @option params [String] :kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) CMK to use
    #   when creating the snapshot copy. This parameter is only required if
    #   you want to use a non-default CMK; if this parameter is not specified,
    #   the default CMK for EBS is used. The ARN contains the `arn:aws:kms`
    #   namespace, followed by the region of the CMK, the AWS account ID of
    #   the CMK owner, the `key` namespace, and then the CMK ID. For example,
    #   arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #   The specified CMK must exist in the region that the snapshot is being
    #   copied to. If a `KmsKeyId` is specified, the `Encrypted` flag must
    #   also be set.
    #
    # @option params [String] :presigned_url
    #   The pre-signed URL that facilitates copying an encrypted snapshot.
    #   This parameter is only required when copying an encrypted snapshot
    #   with the Amazon EC2 Query API; it is available as an optional
    #   parameter in all other cases. The `PresignedUrl` should use the
    #   snapshot source endpoint, the `CopySnapshot` action, and include the
    #   `SourceRegion`, `SourceSnapshotId`, and `DestinationRegion`
    #   parameters. The `PresignedUrl` must be signed using AWS Signature
    #   Version 4. Because EBS snapshots are stored in Amazon S3, the signing
    #   algorithm for this parameter uses the same logic that is described in
    #   [Authenticating Requests by Using Query Parameters (AWS Signature
    #   Version 4)][1] in the *Amazon Simple Storage Service API Reference*.
    #   An invalid or improperly signed `PresignedUrl` will cause the copy
    #   operation to fail asynchronously, and the snapshot will move to an
    #   `error` state.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #
    # @option params [required, String] :source_region
    #   The ID of the region that contains the snapshot to be copied.
    #
    # @option params [required, String] :source_snapshot_id
    #   The ID of the EBS snapshot to copy.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CopySnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopySnapshotResult#snapshot_id #snapshot_id} => String
    #
    #
    # @example Example: To copy a snapshot
    #
    #   # This example copies a snapshot with the snapshot ID of ``snap-066877671789bd71b`` from the ``us-west-2`` region to the ``us-east-1`` region and adds a short description to identify the snapshot.
    #
    #   resp = client.copy_snapshot({
    #     description: "This is my copied snapshot.", 
    #     destination_region: "us-east-1", 
    #     source_region: "us-west-2", 
    #     source_snapshot_id: "snap-066877671789bd71b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshot_id: "snap-066877671789bd71b", 
    #   }
    #
    # @example Copy snapshot example
    #   source_snapshot_id = 'snapshot-id'
    #   source_region = 'us-east-1'
    #   target_region = 'us-west-2'
    #
    #   # You must configure your EC2 client for the destination region to copy
    #   ec2 = Aws::EC2::Client(region: target_region)
    #
    #   resp = ec2.copy_snapshot({
    #       source_region: source_region,
    #       source_snapshot_id: source_snapshot_id,
    #   })
    #
    #   snapshot_id = resp.snapshot_id
    #
    #   ec2.wait_until(:snapshot_completed, snapshot_ids: [snapshot_id])
    #
    # @example Copy an encrypted snapshot
    #   # same as above, expect you must pass `encrypted: true`
    #   resp = ec2.copy_snapshot({
    #       source_region: source_region,
    #       source_snapshot_id: source_snapshot_id,
    #       encrypted: true, # required for encrypted snapshots
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_snapshot({
    #     description: "String",
    #     destination_region: "String",
    #     encrypted: false,
    #     kms_key_id: "String",
    #     presigned_url: "String",
    #     source_region: "String", # required
    #     source_snapshot_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopySnapshot AWS API Documentation
    #
    # @overload copy_snapshot(params = {})
    # @param [Hash] params ({})
    def copy_snapshot(params = {}, options = {})
      req = build_request(:copy_snapshot, params)
      req.send_request(options)
    end

    # Provides information to AWS about your VPN customer gateway device.
    # The customer gateway is the appliance at your end of the VPN
    # connection. (The device on the AWS side of the VPN connection is the
    # virtual private gateway.) You must provide the Internet-routable IP
    # address of the customer gateway's external interface. The IP address
    # must be static and may be behind a device performing network address
    # translation (NAT).
    #
    # For devices that use Border Gateway Protocol (BGP), you can also
    # provide the device's BGP Autonomous System Number (ASN). You can use
    # an existing ASN assigned to your network. If you don't have an ASN
    # already, you can use a private ASN (in the 64512 - 65534 range).
    #
    # <note markdown="1"> Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534,
    # with the exception of 7224, which is reserved in the `us-east-1`
    # region, and 9059, which is reserved in the `eu-west-1` region.
    #
    #  </note>
    #
    # For more information about VPN customer gateways, see [Adding a
    # Hardware Virtual Private Gateway to Your VPC][1] in the *Amazon
    # Virtual Private Cloud User Guide*.
    #
    # You cannot create more than one customer gateway with the same VPN
    # type, IP address, and BGP ASN parameter values. If you run an
    # identical request more than one time, the first request creates the
    # customer gateway, and subsequent requests return information about the
    # existing customer gateway. The subsequent requests do not create new
    # customer gateway resources.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html
    #
    # @option params [required, Integer] :bgp_asn
    #   For devices that support BGP, the customer gateway's BGP ASN.
    #
    #   Default: 65000
    #
    # @option params [required, String] :public_ip
    #   The Internet-routable IP address for the customer gateway's outside
    #   interface. The address must be static.
    #
    # @option params [required, String] :type
    #   The type of VPN connection that this customer gateway supports
    #   (`ipsec.1`).
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateCustomerGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomerGatewayResult#customer_gateway #customer_gateway} => Types::CustomerGateway
    #
    #
    # @example Example: To create a customer gateway
    #
    #   # This example creates a customer gateway with the specified IP address for its outside interface.
    #
    #   resp = client.create_customer_gateway({
    #     bgp_asn: 65534, 
    #     public_ip: "12.1.2.3", 
    #     type: "ipsec.1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     customer_gateway: {
    #       bgp_asn: "65534", 
    #       customer_gateway_id: "cgw-0e11f167", 
    #       ip_address: "12.1.2.3", 
    #       state: "available", 
    #       type: "ipsec.1", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_customer_gateway({
    #     bgp_asn: 1, # required
    #     public_ip: "String", # required
    #     type: "ipsec.1", # required, accepts ipsec.1
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_gateway.bgp_asn #=> String
    #   resp.customer_gateway.customer_gateway_id #=> String
    #   resp.customer_gateway.ip_address #=> String
    #   resp.customer_gateway.state #=> String
    #   resp.customer_gateway.type #=> String
    #   resp.customer_gateway.tags #=> Array
    #   resp.customer_gateway.tags[0].key #=> String
    #   resp.customer_gateway.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateCustomerGateway AWS API Documentation
    #
    # @overload create_customer_gateway(params = {})
    # @param [Hash] params ({})
    def create_customer_gateway(params = {}, options = {})
      req = build_request(:create_customer_gateway, params)
      req.send_request(options)
    end

    # Creates a default VPC with a size `/16` IPv4 CIDR block and a default
    # subnet in each Availability Zone. For more information about the
    # components of a default VPC, see [Default VPC and Default Subnets][1]
    # in the *Amazon Virtual Private Cloud User Guide*. You cannot specify
    # the components of the default VPC yourself.
    #
    # You can create a default VPC if you deleted your previous default VPC.
    # You cannot have more than one default VPC per region.
    #
    # If your account supports EC2-Classic, you cannot use this action to
    # create a default VPC in a region that supports EC2-Classic. If you
    # want a default VPC in a region that supports EC2-Classic, see "I
    # really want a default VPC for my existing EC2 account. Is that
    # possible?" in the [Default VPCs FAQ][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html
    # [2]: http://aws.amazon.com/vpc/faqs/#Default_VPCs
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateDefaultVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDefaultVpcResult#vpc #vpc} => Types::Vpc
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_default_vpc({
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc.cidr_block #=> String
    #   resp.vpc.dhcp_options_id #=> String
    #   resp.vpc.state #=> String, one of "pending", "available"
    #   resp.vpc.vpc_id #=> String
    #   resp.vpc.instance_tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.vpc.ipv_6_cidr_block_association_set #=> Array
    #   resp.vpc.ipv_6_cidr_block_association_set[0].association_id #=> String
    #   resp.vpc.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block #=> String
    #   resp.vpc.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.vpc.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.status_message #=> String
    #   resp.vpc.is_default #=> Boolean
    #   resp.vpc.tags #=> Array
    #   resp.vpc.tags[0].key #=> String
    #   resp.vpc.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDefaultVpc AWS API Documentation
    #
    # @overload create_default_vpc(params = {})
    # @param [Hash] params ({})
    def create_default_vpc(params = {}, options = {})
      req = build_request(:create_default_vpc, params)
      req.send_request(options)
    end

    # Creates a set of DHCP options for your VPC. After creating the set,
    # you must associate it with the VPC, causing all existing and new
    # instances that you launch in the VPC to use this set of DHCP options.
    # The following are the individual DHCP options you can specify. For
    # more information about the options, see [RFC 2132][1].
    #
    # * `domain-name-servers` - The IP addresses of up to four domain name
    #   servers, or AmazonProvidedDNS. The default DHCP option set specifies
    #   AmazonProvidedDNS. If specifying more than one domain name server,
    #   specify the IP addresses in a single parameter, separated by commas.
    #   If you want your instance to receive a custom DNS hostname as
    #   specified in `domain-name`, you must set `domain-name-servers` to a
    #   custom DNS server.
    #
    # * `domain-name` - If you're using AmazonProvidedDNS in `us-east-1`,
    #   specify `ec2.internal`. If you're using AmazonProvidedDNS in
    #   another region, specify `region.compute.internal` (for example,
    #   `ap-northeast-1.compute.internal`). Otherwise, specify a domain name
    #   (for example, `MyCompany.com`). This value is used to complete
    #   unqualified DNS hostnames. **Important**\: Some Linux operating
    #   systems accept multiple domain names separated by spaces. However,
    #   Windows and other Linux operating systems treat the value as a
    #   single domain, which results in unexpected behavior. If your DHCP
    #   options set is associated with a VPC that has instances with
    #   multiple operating systems, specify only one domain name.
    #
    # * `ntp-servers` - The IP addresses of up to four Network Time Protocol
    #   (NTP) servers.
    #
    # * `netbios-name-servers` - The IP addresses of up to four NetBIOS name
    #   servers.
    #
    # * `netbios-node-type` - The NetBIOS node type (1, 2, 4, or 8). We
    #   recommend that you specify 2 (broadcast and multicast are not
    #   currently supported). For more information about these node types,
    #   see [RFC 2132][1].
    #
    # Your VPC automatically starts out with a set of DHCP options that
    # includes only a DNS server that we provide (AmazonProvidedDNS). If you
    # create a set of options, and if your VPC has an Internet gateway, make
    # sure to set the `domain-name-servers` option either to
    # `AmazonProvidedDNS` or to a domain name server of your choice. For
    # more information about DHCP options, see [DHCP Options Sets][2] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://www.ietf.org/rfc/rfc2132.txt
    # [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html
    #
    # @option params [required, Array<Types::NewDhcpConfiguration>] :dhcp_configurations
    #   A DHCP configuration option.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateDhcpOptionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDhcpOptionsResult#dhcp_options #dhcp_options} => Types::DhcpOptions
    #
    #
    # @example Example: To create a DHCP options set
    #
    #   # This example creates a DHCP options set.
    #
    #   resp = client.create_dhcp_options({
    #     dhcp_configurations: [
    #       {
    #         key: "domain-name-servers", 
    #         values: [
    #           "10.2.5.1", 
    #           "10.2.5.2", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dhcp_options: {
    #       dhcp_configurations: [
    #         {
    #           key: "domain-name-servers", 
    #           values: [
    #             {
    #               value: "10.2.5.2", 
    #             }, 
    #             {
    #               value: "10.2.5.1", 
    #             }, 
    #           ], 
    #         }, 
    #       ], 
    #       dhcp_options_id: "dopt-d9070ebb", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dhcp_options({
    #     dhcp_configurations: [ # required
    #       {
    #         key: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.dhcp_options.dhcp_configurations #=> Array
    #   resp.dhcp_options.dhcp_configurations[0].key #=> String
    #   resp.dhcp_options.dhcp_configurations[0].values #=> Array
    #   resp.dhcp_options.dhcp_configurations[0].values[0] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.dhcp_options.dhcp_options_id #=> String
    #   resp.dhcp_options.tags #=> Array
    #   resp.dhcp_options.tags[0].key #=> String
    #   resp.dhcp_options.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDhcpOptions AWS API Documentation
    #
    # @overload create_dhcp_options(params = {})
    # @param [Hash] params ({})
    def create_dhcp_options(params = {}, options = {})
      req = build_request(:create_dhcp_options, params)
      req.send_request(options)
    end

    # \[IPv6 only\] Creates an egress-only Internet gateway for your VPC. An
    # egress-only Internet gateway is used to enable outbound communication
    # over IPv6 from instances in your VPC to the Internet, and prevents
    # hosts outside of your VPC from initiating an IPv6 connection with your
    # instance.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC for which to create the egress-only Internet
    #   gateway.
    #
    # @return [Types::CreateEgressOnlyInternetGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEgressOnlyInternetGatewayResult#client_token #client_token} => String
    #   * {Types::CreateEgressOnlyInternetGatewayResult#egress_only_internet_gateway #egress_only_internet_gateway} => Types::EgressOnlyInternetGateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_egress_only_internet_gateway({
    #     client_token: "String",
    #     dry_run: false,
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.egress_only_internet_gateway.attachments #=> Array
    #   resp.egress_only_internet_gateway.attachments[0].state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.egress_only_internet_gateway.attachments[0].vpc_id #=> String
    #   resp.egress_only_internet_gateway.egress_only_internet_gateway_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateEgressOnlyInternetGateway AWS API Documentation
    #
    # @overload create_egress_only_internet_gateway(params = {})
    # @param [Hash] params ({})
    def create_egress_only_internet_gateway(params = {}, options = {})
      req = build_request(:create_egress_only_internet_gateway, params)
      req.send_request(options)
    end

    # Creates one or more flow logs to capture IP traffic for a specific
    # network interface, subnet, or VPC. Flow logs are delivered to a
    # specified log group in Amazon CloudWatch Logs. If you specify a VPC or
    # subnet in the request, a log stream is created in CloudWatch Logs for
    # each network interface in the subnet or VPC. Log streams can include
    # information about accepted and rejected traffic to a network
    # interface. You can view the data in your log streams using Amazon
    # CloudWatch Logs.
    #
    # In your request, you must also specify an IAM role that has permission
    # to publish logs to CloudWatch Logs.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :deliver_logs_permission_arn
    #   The ARN for the IAM role that's used to post flow logs to a
    #   CloudWatch Logs log group.
    #
    # @option params [required, String] :log_group_name
    #   The name of the CloudWatch log group.
    #
    # @option params [required, Array<String>] :resource_ids
    #   One or more subnet, network interface, or VPC IDs.
    #
    #   Constraints: Maximum of 1000 resources
    #
    # @option params [required, String] :resource_type
    #   The type of resource on which to create the flow log.
    #
    # @option params [required, String] :traffic_type
    #   The type of traffic to log.
    #
    # @return [Types::CreateFlowLogsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlowLogsResult#client_token #client_token} => String
    #   * {Types::CreateFlowLogsResult#flow_log_ids #flow_log_ids} => Array&lt;String&gt;
    #   * {Types::CreateFlowLogsResult#unsuccessful #unsuccessful} => Array&lt;Types::UnsuccessfulItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow_logs({
    #     client_token: "String",
    #     deliver_logs_permission_arn: "String", # required
    #     log_group_name: "String", # required
    #     resource_ids: ["String"], # required
    #     resource_type: "VPC", # required, accepts VPC, Subnet, NetworkInterface
    #     traffic_type: "ACCEPT", # required, accepts ACCEPT, REJECT, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.flow_log_ids #=> Array
    #   resp.flow_log_ids[0] #=> String
    #   resp.unsuccessful #=> Array
    #   resp.unsuccessful[0].error.code #=> String
    #   resp.unsuccessful[0].error.message #=> String
    #   resp.unsuccessful[0].resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFlowLogs AWS API Documentation
    #
    # @overload create_flow_logs(params = {})
    # @param [Hash] params ({})
    def create_flow_logs(params = {}, options = {})
      req = build_request(:create_flow_logs, params)
      req.send_request(options)
    end

    # Creates an Amazon FPGA Image (AFI) from the specified design
    # checkpoint (DCP).
    #
    # The create operation is asynchronous. To verify that the AFI is ready
    # for use, check the output logs.
    #
    # An AFI contains the FPGA bitstream that is ready to download to an
    # FPGA. You can securely deploy an AFI on one or more FPGA-accelerated
    # instances. For more information, see the [AWS FPGA Hardware
    # Development Kit][1].
    #
    #
    #
    # [1]: https://github.com/aws/aws-fpga/
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Types::StorageLocation] :input_storage_location
    #   The location of the encrypted design checkpoint in Amazon S3. The
    #   input must be a tarball.
    #
    # @option params [Types::StorageLocation] :logs_storage_location
    #   The location in Amazon S3 for the output logs.
    #
    # @option params [String] :description
    #   A description for the AFI.
    #
    # @option params [String] :name
    #   A name for the AFI.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateFpgaImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFpgaImageResult#fpga_image_id #fpga_image_id} => String
    #   * {Types::CreateFpgaImageResult#fpga_image_global_id #fpga_image_global_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fpga_image({
    #     dry_run: false,
    #     input_storage_location: { # required
    #       bucket: "String",
    #       key: "String",
    #     },
    #     logs_storage_location: {
    #       bucket: "String",
    #       key: "String",
    #     },
    #     description: "String",
    #     name: "String",
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.fpga_image_id #=> String
    #   resp.fpga_image_global_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFpgaImage AWS API Documentation
    #
    # @overload create_fpga_image(params = {})
    # @param [Hash] params ({})
    def create_fpga_image(params = {}, options = {})
      req = build_request(:create_fpga_image, params)
      req.send_request(options)
    end

    # Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance
    # that is either running or stopped.
    #
    # If you customized your instance with instance store volumes or EBS
    # volumes in addition to the root device volume, the new AMI contains
    # block device mapping information for those volumes. When you launch an
    # instance from this new AMI, the instance automatically launches with
    # those additional volumes.
    #
    # For more information, see [Creating Amazon EBS-Backed Linux AMIs][1]
    # in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html
    #
    # @option params [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   Information about one or more block device mappings.
    #
    # @option params [String] :description
    #   A description for the new image.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, String] :name
    #   A name for the new image.
    #
    #   Constraints: 3-128 alphanumeric characters, parentheses (()), square
    #   brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-),
    #   single quotes ('), at-signs (@), or underscores(\_)
    #
    # @option params [Boolean] :no_reboot
    #   By default, Amazon EC2 attempts to shut down and reboot the instance
    #   before creating the image. If the 'No Reboot' option is set, Amazon
    #   EC2 doesn't shut down the instance before creating the image. When
    #   this option is used, file system integrity on the created image can't
    #   be guaranteed.
    #
    # @return [Types::CreateImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImageResult#image_id #image_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_image({
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "String",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #         },
    #         no_device: "String",
    #       },
    #     ],
    #     description: "String",
    #     dry_run: false,
    #     instance_id: "String", # required
    #     name: "String", # required
    #     no_reboot: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateImage AWS API Documentation
    #
    # @overload create_image(params = {})
    # @param [Hash] params ({})
    def create_image(params = {}, options = {})
      req = build_request(:create_image, params)
      req.send_request(options)
    end

    # Exports a running or stopped instance to an S3 bucket.
    #
    # For information about the supported operating systems, image formats,
    # and known limitations for the types of instances you can export, see
    # [Exporting an Instance as a VM Using VM Import/Export][1] in the *VM
    # Import/Export User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html
    #
    # @option params [String] :description
    #   A description for the conversion task or the resource being exported.
    #   The maximum length is 255 bytes.
    #
    # @option params [Types::ExportToS3TaskSpecification] :export_to_s3_task
    #   The format and location for an instance export task.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [String] :target_environment
    #   The target virtualization environment.
    #
    # @return [Types::CreateInstanceExportTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceExportTaskResult#export_task #export_task} => Types::ExportTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_export_task({
    #     description: "String",
    #     export_to_s3_task: {
    #       container_format: "ova", # accepts ova
    #       disk_image_format: "VMDK", # accepts VMDK, RAW, VHD
    #       s3_bucket: "String",
    #       s3_prefix: "String",
    #     },
    #     instance_id: "String", # required
    #     target_environment: "citrix", # accepts citrix, vmware, microsoft
    #   })
    #
    # @example Response structure
    #
    #   resp.export_task.description #=> String
    #   resp.export_task.export_task_id #=> String
    #   resp.export_task.export_to_s3_task.container_format #=> String, one of "ova"
    #   resp.export_task.export_to_s3_task.disk_image_format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.export_task.export_to_s3_task.s3_bucket #=> String
    #   resp.export_task.export_to_s3_task.s3_key #=> String
    #   resp.export_task.instance_export_details.instance_id #=> String
    #   resp.export_task.instance_export_details.target_environment #=> String, one of "citrix", "vmware", "microsoft"
    #   resp.export_task.state #=> String, one of "active", "cancelling", "cancelled", "completed"
    #   resp.export_task.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateInstanceExportTask AWS API Documentation
    #
    # @overload create_instance_export_task(params = {})
    # @param [Hash] params ({})
    def create_instance_export_task(params = {}, options = {})
      req = build_request(:create_instance_export_task, params)
      req.send_request(options)
    end

    # Creates an Internet gateway for use with a VPC. After creating the
    # Internet gateway, you attach it to a VPC using AttachInternetGateway.
    #
    # For more information about your VPC and Internet gateway, see the
    # [Amazon Virtual Private Cloud User Guide][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateInternetGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInternetGatewayResult#internet_gateway #internet_gateway} => Types::InternetGateway
    #
    #
    # @example Example: To create an Internet gateway
    #
    #   # This example creates an Internet gateway.
    #
    #   resp = client.create_internet_gateway({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     internet_gateway: {
    #       attachments: [
    #       ], 
    #       internet_gateway_id: "igw-c0a643a9", 
    #       tags: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_internet_gateway({
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.internet_gateway.attachments #=> Array
    #   resp.internet_gateway.attachments[0].state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.internet_gateway.attachments[0].vpc_id #=> String
    #   resp.internet_gateway.internet_gateway_id #=> String
    #   resp.internet_gateway.tags #=> Array
    #   resp.internet_gateway.tags[0].key #=> String
    #   resp.internet_gateway.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateInternetGateway AWS API Documentation
    #
    # @overload create_internet_gateway(params = {})
    # @param [Hash] params ({})
    def create_internet_gateway(params = {}, options = {})
      req = build_request(:create_internet_gateway, params)
      req.send_request(options)
    end

    # Creates a 2048-bit RSA key pair with the specified name. Amazon EC2
    # stores the public key and displays the private key for you to save to
    # a file. The private key is returned as an unencrypted PEM encoded
    # PKCS#8 private key. If a key with the specified name already exists,
    # Amazon EC2 returns an error.
    #
    # You can have up to five thousand key pairs per region.
    #
    # The key pair returned to you is available only in the region in which
    # you create it. To create a key pair that is available in all regions,
    # use ImportKeyPair.
    #
    # For more information about key pairs, see [Key Pairs][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #
    # @option params [required, String] :key_name
    #   A unique name for the key pair.
    #
    #   Constraints: Up to 255 ASCII characters
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::KeyPair] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::KeyPair#key_fingerprint #key_fingerprint} => String
    #   * {Types::KeyPair#key_material #key_material} => String
    #   * {Types::KeyPair#key_name #key_name} => String
    #
    #
    # @example Example: To create a key pair
    #
    #   # This example creates a key pair named my-key-pair.
    #
    #   resp = client.create_key_pair({
    #     key_name: "my-key-pair", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key_pair({
    #     key_name: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_fingerprint #=> String
    #   resp.key_material #=> String
    #   resp.key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateKeyPair AWS API Documentation
    #
    # @overload create_key_pair(params = {})
    # @param [Hash] params ({})
    def create_key_pair(params = {}, options = {})
      req = build_request(:create_key_pair, params)
      req.send_request(options)
    end

    # Creates a NAT gateway in the specified subnet. A NAT gateway can be
    # used to enable instances in a private subnet to connect to the
    # Internet. This action creates a network interface in the specified
    # subnet with a private IP address from the IP address range of the
    # subnet. For more information, see [NAT Gateways][1] in the *Amazon
    # Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
    #
    # @option params [required, String] :allocation_id
    #   The allocation ID of an Elastic IP address to associate with the NAT
    #   gateway. If the Elastic IP address is associated with another
    #   resource, you must first disassociate it.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1].
    #
    #   Constraint: Maximum 64 ASCII characters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :subnet_id
    #   The subnet in which to create the NAT gateway.
    #
    # @return [Types::CreateNatGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNatGatewayResult#client_token #client_token} => String
    #   * {Types::CreateNatGatewayResult#nat_gateway #nat_gateway} => Types::NatGateway
    #
    #
    # @example Example: To create a NAT gateway
    #
    #   # This example creates a NAT gateway in subnet subnet-1a2b3c4d and associates an Elastic IP address with the allocation ID eipalloc-37fc1a52 with the NAT gateway.
    #
    #   resp = client.create_nat_gateway({
    #     allocation_id: "eipalloc-37fc1a52", 
    #     subnet_id: "subnet-1a2b3c4d", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     nat_gateway: {
    #       create_time: Time.parse("2015-12-17T12:45:26.732Z"), 
    #       nat_gateway_addresses: [
    #         {
    #           allocation_id: "eipalloc-37fc1a52", 
    #         }, 
    #       ], 
    #       nat_gateway_id: "nat-08d48af2a8e83edfd", 
    #       state: "pending", 
    #       subnet_id: "subnet-1a2b3c4d", 
    #       vpc_id: "vpc-1122aabb", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_nat_gateway({
    #     allocation_id: "String", # required
    #     client_token: "String",
    #     subnet_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.nat_gateway.create_time #=> Time
    #   resp.nat_gateway.delete_time #=> Time
    #   resp.nat_gateway.failure_code #=> String
    #   resp.nat_gateway.failure_message #=> String
    #   resp.nat_gateway.nat_gateway_addresses #=> Array
    #   resp.nat_gateway.nat_gateway_addresses[0].allocation_id #=> String
    #   resp.nat_gateway.nat_gateway_addresses[0].network_interface_id #=> String
    #   resp.nat_gateway.nat_gateway_addresses[0].private_ip #=> String
    #   resp.nat_gateway.nat_gateway_addresses[0].public_ip #=> String
    #   resp.nat_gateway.nat_gateway_id #=> String
    #   resp.nat_gateway.provisioned_bandwidth.provision_time #=> Time
    #   resp.nat_gateway.provisioned_bandwidth.provisioned #=> String
    #   resp.nat_gateway.provisioned_bandwidth.request_time #=> Time
    #   resp.nat_gateway.provisioned_bandwidth.requested #=> String
    #   resp.nat_gateway.provisioned_bandwidth.status #=> String
    #   resp.nat_gateway.state #=> String, one of "pending", "failed", "available", "deleting", "deleted"
    #   resp.nat_gateway.subnet_id #=> String
    #   resp.nat_gateway.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNatGateway AWS API Documentation
    #
    # @overload create_nat_gateway(params = {})
    # @param [Hash] params ({})
    def create_nat_gateway(params = {}, options = {})
      req = build_request(:create_nat_gateway, params)
      req.send_request(options)
    end

    # Creates a network ACL in a VPC. Network ACLs provide an optional layer
    # of security (in addition to security groups) for the instances in your
    # VPC.
    #
    # For more information about network ACLs, see [Network ACLs][1] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::CreateNetworkAclResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkAclResult#network_acl #network_acl} => Types::NetworkAcl
    #
    #
    # @example Example: To create a network ACL
    #
    #   # This example creates a network ACL for the specified VPC.
    #
    #   resp = client.create_network_acl({
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     network_acl: {
    #       associations: [
    #       ], 
    #       entries: [
    #         {
    #           cidr_block: "0.0.0.0/0", 
    #           egress: true, 
    #           protocol: "-1", 
    #           rule_action: "deny", 
    #           rule_number: 32767, 
    #         }, 
    #         {
    #           cidr_block: "0.0.0.0/0", 
    #           egress: false, 
    #           protocol: "-1", 
    #           rule_action: "deny", 
    #           rule_number: 32767, 
    #         }, 
    #       ], 
    #       is_default: false, 
    #       network_acl_id: "acl-5fb85d36", 
    #       tags: [
    #       ], 
    #       vpc_id: "vpc-a01106c2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_acl({
    #     dry_run: false,
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_acl.associations #=> Array
    #   resp.network_acl.associations[0].network_acl_association_id #=> String
    #   resp.network_acl.associations[0].network_acl_id #=> String
    #   resp.network_acl.associations[0].subnet_id #=> String
    #   resp.network_acl.entries #=> Array
    #   resp.network_acl.entries[0].cidr_block #=> String
    #   resp.network_acl.entries[0].egress #=> Boolean
    #   resp.network_acl.entries[0].icmp_type_code.code #=> Integer
    #   resp.network_acl.entries[0].icmp_type_code.type #=> Integer
    #   resp.network_acl.entries[0].ipv_6_cidr_block #=> String
    #   resp.network_acl.entries[0].port_range.from #=> Integer
    #   resp.network_acl.entries[0].port_range.to #=> Integer
    #   resp.network_acl.entries[0].protocol #=> String
    #   resp.network_acl.entries[0].rule_action #=> String, one of "allow", "deny"
    #   resp.network_acl.entries[0].rule_number #=> Integer
    #   resp.network_acl.is_default #=> Boolean
    #   resp.network_acl.network_acl_id #=> String
    #   resp.network_acl.tags #=> Array
    #   resp.network_acl.tags[0].key #=> String
    #   resp.network_acl.tags[0].value #=> String
    #   resp.network_acl.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkAcl AWS API Documentation
    #
    # @overload create_network_acl(params = {})
    # @param [Hash] params ({})
    def create_network_acl(params = {}, options = {})
      req = build_request(:create_network_acl, params)
      req.send_request(options)
    end

    # Creates an entry (a rule) in a network ACL with the specified rule
    # number. Each network ACL has a set of numbered ingress rules and a
    # separate set of numbered egress rules. When determining whether a
    # packet should be allowed in or out of a subnet associated with the
    # ACL, we process the entries in the ACL according to the rule numbers,
    # in ascending order. Each network ACL has a set of ingress rules and a
    # separate set of egress rules.
    #
    # We recommend that you leave room between the rule numbers (for
    # example, 100, 110, 120, ...), and not number them one right after the
    # other (for example, 101, 102, 103, ...). This makes it easier to add a
    # rule between existing ones without having to renumber the rules.
    #
    # After you add an entry, you can't modify it; you must either replace
    # it, or create an entry and delete the old one.
    #
    # For more information about network ACLs, see [Network ACLs][1] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html
    #
    # @option params [String] :cidr_block
    #   The IPv4 network range to allow or deny, in CIDR notation (for example
    #   `172.16.0.0/24`).
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Boolean] :egress
    #   Indicates whether this is an egress rule (rule is applied to traffic
    #   leaving the subnet).
    #
    # @option params [Types::IcmpTypeCode] :icmp_type_code
    #   ICMP protocol: The ICMP or ICMPv6 type and code. Required if
    #   specifying the ICMP protocol, or protocol 58 (ICMPv6) with an IPv6
    #   CIDR block.
    #
    # @option params [String] :ipv_6_cidr_block
    #   The IPv6 network range to allow or deny, in CIDR notation (for example
    #   `2001:db8:1234:1a00::/64`).
    #
    # @option params [required, String] :network_acl_id
    #   The ID of the network ACL.
    #
    # @option params [Types::PortRange] :port_range
    #   TCP or UDP protocols: The range of ports the rule applies to.
    #
    # @option params [required, String] :protocol
    #   The protocol. A value of `-1` or `all` means all protocols. If you
    #   specify `all`, `-1`, or a protocol number other than `tcp`, `udp`, or
    #   `icmp`, traffic on all ports is allowed, regardless of any ports or
    #   ICMP types or codes you specify. If you specify protocol `58` (ICMPv6)
    #   and specify an IPv4 CIDR block, traffic for all ICMP types and codes
    #   allowed, regardless of any that you specify. If you specify protocol
    #   `58` (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP
    #   type and code.
    #
    # @option params [required, String] :rule_action
    #   Indicates whether to allow or deny the traffic that matches the rule.
    #
    # @option params [required, Integer] :rule_number
    #   The rule number for the entry (for example, 100). ACL entries are
    #   processed in ascending order by rule number.
    #
    #   Constraints: Positive integer from 1 to 32766. The range 32767 to
    #   65535 is reserved for internal use.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a network ACL entry
    #
    #   # This example creates an entry for the specified network ACL. The rule allows ingress traffic from anywhere (0.0.0.0/0) on UDP port 53 (DNS) into any associated subnet.
    #
    #   resp = client.create_network_acl_entry({
    #     cidr_block: "0.0.0.0/0", 
    #     egress: false, 
    #     network_acl_id: "acl-5fb85d36", 
    #     port_range: {
    #       from: 53, 
    #       to: 53, 
    #     }, 
    #     protocol: "udp", 
    #     rule_action: "allow", 
    #     rule_number: 100, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_acl_entry({
    #     cidr_block: "String",
    #     dry_run: false,
    #     egress: false, # required
    #     icmp_type_code: {
    #       code: 1,
    #       type: 1,
    #     },
    #     ipv_6_cidr_block: "String",
    #     network_acl_id: "String", # required
    #     port_range: {
    #       from: 1,
    #       to: 1,
    #     },
    #     protocol: "String", # required
    #     rule_action: "allow", # required, accepts allow, deny
    #     rule_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkAclEntry AWS API Documentation
    #
    # @overload create_network_acl_entry(params = {})
    # @param [Hash] params ({})
    def create_network_acl_entry(params = {}, options = {})
      req = build_request(:create_network_acl_entry, params)
      req.send_request(options)
    end

    # Creates a network interface in the specified subnet.
    #
    # For more information about network interfaces, see [Elastic Network
    # Interfaces][1] in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html
    #
    # @option params [String] :description
    #   A description for the network interface.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :groups
    #   The IDs of one or more security groups.
    #
    # @option params [Integer] :ipv_6_address_count
    #   The number of IPv6 addresses to assign to a network interface. Amazon
    #   EC2 automatically selects the IPv6 addresses from the subnet range.
    #   You can't use this option if specifying specific IPv6 addresses. If
    #   your subnet has the `AssignIpv6AddressOnCreation` attribute set to
    #   `true`, you can specify `0` to override this setting.
    #
    # @option params [Array<Types::InstanceIpv6Address>] :ipv_6_addresses
    #   One or more specific IPv6 addresses from the IPv6 CIDR block range of
    #   your subnet. You can't use this option if you're specifying a number
    #   of IPv6 addresses.
    #
    # @option params [String] :private_ip_address
    #   The primary private IPv4 address of the network interface. If you
    #   don't specify an IPv4 address, Amazon EC2 selects one for you from
    #   the subnet's IPv4 CIDR range. If you specify an IP address, you
    #   cannot indicate any IP addresses specified in `privateIpAddresses` as
    #   primary (only one IP address can be designated as primary).
    #
    # @option params [Array<Types::PrivateIpAddressSpecification>] :private_ip_addresses
    #   One or more private IPv4 addresses.
    #
    # @option params [Integer] :secondary_private_ip_address_count
    #   The number of secondary private IPv4 addresses to assign to a network
    #   interface. When you specify a number of secondary IPv4 addresses,
    #   Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR
    #   range. You can't specify this option and specify more than one
    #   private IP address using `privateIpAddresses`.
    #
    #   The number of IP addresses you can assign to a network interface
    #   varies by instance type. For more information, see [IP Addresses Per
    #   ENI Per Instance Type][1] in the *Amazon Virtual Private Cloud User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI
    #
    # @option params [required, String] :subnet_id
    #   The ID of the subnet to associate with the network interface.
    #
    # @return [Types::CreateNetworkInterfaceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkInterfaceResult#network_interface #network_interface} => Types::NetworkInterface
    #
    #
    # @example Example: To create a network interface
    #
    #   # This example creates a network interface for the specified subnet.
    #
    #   resp = client.create_network_interface({
    #     description: "my network interface", 
    #     groups: [
    #       "sg-903004f8", 
    #     ], 
    #     private_ip_address: "10.0.2.17", 
    #     subnet_id: "subnet-9d4a7b6c", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     network_interface: {
    #       availability_zone: "us-east-1d", 
    #       description: "my network interface", 
    #       groups: [
    #         {
    #           group_id: "sg-903004f8", 
    #           group_name: "default", 
    #         }, 
    #       ], 
    #       mac_address: "02:1a:80:41:52:9c", 
    #       network_interface_id: "eni-e5aa89a3", 
    #       owner_id: "123456789012", 
    #       private_ip_address: "10.0.2.17", 
    #       private_ip_addresses: [
    #         {
    #           primary: true, 
    #           private_ip_address: "10.0.2.17", 
    #         }, 
    #       ], 
    #       requester_managed: false, 
    #       source_dest_check: true, 
    #       status: "pending", 
    #       subnet_id: "subnet-9d4a7b6c", 
    #       tag_set: [
    #       ], 
    #       vpc_id: "vpc-a01106c2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_interface({
    #     description: "String",
    #     dry_run: false,
    #     groups: ["String"],
    #     ipv_6_address_count: 1,
    #     ipv_6_addresses: [
    #       {
    #         ipv_6_address: "String",
    #       },
    #     ],
    #     private_ip_address: "String",
    #     private_ip_addresses: [
    #       {
    #         primary: false,
    #         private_ip_address: "String", # required
    #       },
    #     ],
    #     secondary_private_ip_address_count: 1,
    #     subnet_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_interface.association.allocation_id #=> String
    #   resp.network_interface.association.association_id #=> String
    #   resp.network_interface.association.ip_owner_id #=> String
    #   resp.network_interface.association.public_dns_name #=> String
    #   resp.network_interface.association.public_ip #=> String
    #   resp.network_interface.attachment.attach_time #=> Time
    #   resp.network_interface.attachment.attachment_id #=> String
    #   resp.network_interface.attachment.delete_on_termination #=> Boolean
    #   resp.network_interface.attachment.device_index #=> Integer
    #   resp.network_interface.attachment.instance_id #=> String
    #   resp.network_interface.attachment.instance_owner_id #=> String
    #   resp.network_interface.attachment.status #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.network_interface.availability_zone #=> String
    #   resp.network_interface.description #=> String
    #   resp.network_interface.groups #=> Array
    #   resp.network_interface.groups[0].group_name #=> String
    #   resp.network_interface.groups[0].group_id #=> String
    #   resp.network_interface.interface_type #=> String, one of "interface", "natGateway"
    #   resp.network_interface.ipv_6_addresses #=> Array
    #   resp.network_interface.ipv_6_addresses[0].ipv_6_address #=> String
    #   resp.network_interface.mac_address #=> String
    #   resp.network_interface.network_interface_id #=> String
    #   resp.network_interface.owner_id #=> String
    #   resp.network_interface.private_dns_name #=> String
    #   resp.network_interface.private_ip_address #=> String
    #   resp.network_interface.private_ip_addresses #=> Array
    #   resp.network_interface.private_ip_addresses[0].association.allocation_id #=> String
    #   resp.network_interface.private_ip_addresses[0].association.association_id #=> String
    #   resp.network_interface.private_ip_addresses[0].association.ip_owner_id #=> String
    #   resp.network_interface.private_ip_addresses[0].association.public_dns_name #=> String
    #   resp.network_interface.private_ip_addresses[0].association.public_ip #=> String
    #   resp.network_interface.private_ip_addresses[0].primary #=> Boolean
    #   resp.network_interface.private_ip_addresses[0].private_dns_name #=> String
    #   resp.network_interface.private_ip_addresses[0].private_ip_address #=> String
    #   resp.network_interface.requester_id #=> String
    #   resp.network_interface.requester_managed #=> Boolean
    #   resp.network_interface.source_dest_check #=> Boolean
    #   resp.network_interface.status #=> String, one of "available", "attaching", "in-use", "detaching"
    #   resp.network_interface.subnet_id #=> String
    #   resp.network_interface.tag_set #=> Array
    #   resp.network_interface.tag_set[0].key #=> String
    #   resp.network_interface.tag_set[0].value #=> String
    #   resp.network_interface.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkInterface AWS API Documentation
    #
    # @overload create_network_interface(params = {})
    # @param [Hash] params ({})
    def create_network_interface(params = {}, options = {})
      req = build_request(:create_network_interface, params)
      req.send_request(options)
    end

    # Grants an AWS authorized partner account permission to attach the
    # specified network interface to an instance in their account.
    #
    # You can grant permission to a single AWS account only, and only one
    # account at a time.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @option params [String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [String] :aws_service
    #   The AWS service. Currently not supported.
    #
    # @option params [required, String] :permission
    #   The type of permission to grant.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateNetworkInterfacePermissionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkInterfacePermissionResult#interface_permission #interface_permission} => Types::NetworkInterfacePermission
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_interface_permission({
    #     network_interface_id: "String", # required
    #     aws_account_id: "String",
    #     aws_service: "String",
    #     permission: "INSTANCE-ATTACH", # required, accepts INSTANCE-ATTACH, EIP-ASSOCIATE
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.interface_permission.network_interface_permission_id #=> String
    #   resp.interface_permission.network_interface_id #=> String
    #   resp.interface_permission.aws_account_id #=> String
    #   resp.interface_permission.aws_service #=> String
    #   resp.interface_permission.permission #=> String, one of "INSTANCE-ATTACH", "EIP-ASSOCIATE"
    #   resp.interface_permission.permission_state.state #=> String, one of "pending", "granted", "revoking", "revoked"
    #   resp.interface_permission.permission_state.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkInterfacePermission AWS API Documentation
    #
    # @overload create_network_interface_permission(params = {})
    # @param [Hash] params ({})
    def create_network_interface_permission(params = {}, options = {})
      req = build_request(:create_network_interface_permission, params)
      req.send_request(options)
    end

    # Creates a placement group that you launch cluster instances into. You
    # must give the group a name that's unique within the scope of your
    # account.
    #
    # For more information about placement groups and cluster instances, see
    # [Cluster Instances][1] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :group_name
    #   A name for the placement group.
    #
    #   Constraints: Up to 255 ASCII characters
    #
    # @option params [required, String] :strategy
    #   The placement strategy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a placement group
    #
    #   # This example creates a placement group with the specified name.
    #
    #   resp = client.create_placement_group({
    #     group_name: "my-cluster", 
    #     strategy: "cluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_placement_group({
    #     dry_run: false,
    #     group_name: "String", # required
    #     strategy: "cluster", # required, accepts cluster
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreatePlacementGroup AWS API Documentation
    #
    # @overload create_placement_group(params = {})
    # @param [Hash] params ({})
    def create_placement_group(params = {}, options = {})
      req = build_request(:create_placement_group, params)
      req.send_request(options)
    end

    # Creates a listing for Amazon EC2 Standard Reserved Instances to be
    # sold in the Reserved Instance Marketplace. You can submit one Standard
    # Reserved Instance listing at a time. To get a list of your Standard
    # Reserved Instances, you can use the DescribeReservedInstances
    # operation.
    #
    # <note markdown="1"> Only Standard Reserved Instances with a capacity reservation can be
    # sold in the Reserved Instance Marketplace. Convertible Reserved
    # Instances and Standard Reserved Instances with a regional benefit
    # cannot be sold.
    #
    #  </note>
    #
    # The Reserved Instance Marketplace matches sellers who want to resell
    # Standard Reserved Instance capacity that they no longer need with
    # buyers who want to purchase additional capacity. Reserved Instances
    # bought and sold through the Reserved Instance Marketplace work like
    # any other Reserved Instances.
    #
    # To sell your Standard Reserved Instances, you must first register as a
    # seller in the Reserved Instance Marketplace. After completing the
    # registration process, you can create a Reserved Instance Marketplace
    # listing of some or all of your Standard Reserved Instances, and
    # specify the upfront price to receive for them. Your Standard Reserved
    # Instance listings then become available for purchase. To view the
    # details of your Standard Reserved Instance listing, you can use the
    # DescribeReservedInstancesListings operation.
    #
    # For more information, see [Reserved Instance Marketplace][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   your listings. This helps avoid duplicate listings. For more
    #   information, see [Ensuring Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Integer] :instance_count
    #   The number of instances that are a part of a Reserved Instance account
    #   to be listed in the Reserved Instance Marketplace. This number should
    #   be less than or equal to the instance count associated with the
    #   Reserved Instance ID specified in this call.
    #
    # @option params [required, Array<Types::PriceScheduleSpecification>] :price_schedules
    #   A list specifying the price of the Standard Reserved Instance for each
    #   month remaining in the Reserved Instance term.
    #
    # @option params [required, String] :reserved_instances_id
    #   The ID of the active Standard Reserved Instance.
    #
    # @return [Types::CreateReservedInstancesListingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReservedInstancesListingResult#reserved_instances_listings #reserved_instances_listings} => Array&lt;Types::ReservedInstancesListing&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_reserved_instances_listing({
    #     client_token: "String", # required
    #     instance_count: 1, # required
    #     price_schedules: [ # required
    #       {
    #         currency_code: "USD", # accepts USD
    #         price: 1.0,
    #         term: 1,
    #       },
    #     ],
    #     reserved_instances_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instances_listings #=> Array
    #   resp.reserved_instances_listings[0].client_token #=> String
    #   resp.reserved_instances_listings[0].create_date #=> Time
    #   resp.reserved_instances_listings[0].instance_counts #=> Array
    #   resp.reserved_instances_listings[0].instance_counts[0].instance_count #=> Integer
    #   resp.reserved_instances_listings[0].instance_counts[0].state #=> String, one of "available", "sold", "cancelled", "pending"
    #   resp.reserved_instances_listings[0].price_schedules #=> Array
    #   resp.reserved_instances_listings[0].price_schedules[0].active #=> Boolean
    #   resp.reserved_instances_listings[0].price_schedules[0].currency_code #=> String, one of "USD"
    #   resp.reserved_instances_listings[0].price_schedules[0].price #=> Float
    #   resp.reserved_instances_listings[0].price_schedules[0].term #=> Integer
    #   resp.reserved_instances_listings[0].reserved_instances_id #=> String
    #   resp.reserved_instances_listings[0].reserved_instances_listing_id #=> String
    #   resp.reserved_instances_listings[0].status #=> String, one of "active", "pending", "cancelled", "closed"
    #   resp.reserved_instances_listings[0].status_message #=> String
    #   resp.reserved_instances_listings[0].tags #=> Array
    #   resp.reserved_instances_listings[0].tags[0].key #=> String
    #   resp.reserved_instances_listings[0].tags[0].value #=> String
    #   resp.reserved_instances_listings[0].update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateReservedInstancesListing AWS API Documentation
    #
    # @overload create_reserved_instances_listing(params = {})
    # @param [Hash] params ({})
    def create_reserved_instances_listing(params = {}, options = {})
      req = build_request(:create_reserved_instances_listing, params)
      req.send_request(options)
    end

    # Creates a route in a route table within a VPC.
    #
    # You must specify one of the following targets: Internet gateway or
    # virtual private gateway, NAT instance, NAT gateway, VPC peering
    # connection, network interface, or egress-only Internet gateway.
    #
    # When determining how to route traffic, we use the route with the most
    # specific match. For example, traffic is destined for the IPv4 address
    # `192.0.2.3`, and the route table includes the following two IPv4
    # routes:
    #
    # * `192.0.2.0/24` (goes to some target A)
    #
    # * `192.0.2.0/28` (goes to some target B)
    #
    # Both routes apply to the traffic destined for `192.0.2.3`. However,
    # the second route in the list covers a smaller number of IP addresses
    # and is therefore more specific, so we use that route to determine
    # where to target the traffic.
    #
    # For more information about route tables, see [Route Tables][1] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html
    #
    # @option params [String] :destination_cidr_block
    #   The IPv4 CIDR address block used for the destination match. Routing
    #   decisions are based on the most specific match.
    #
    # @option params [String] :destination_ipv_6_cidr_block
    #   The IPv6 CIDR block used for the destination match. Routing decisions
    #   are based on the most specific match.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :egress_only_internet_gateway_id
    #   \[IPv6 traffic only\] The ID of an egress-only Internet gateway.
    #
    # @option params [String] :gateway_id
    #   The ID of an Internet gateway or virtual private gateway attached to
    #   your VPC.
    #
    # @option params [String] :instance_id
    #   The ID of a NAT instance in your VPC. The operation fails if you
    #   specify an instance ID unless exactly one network interface is
    #   attached.
    #
    # @option params [String] :nat_gateway_id
    #   \[IPv4 traffic only\] The ID of a NAT gateway.
    #
    # @option params [String] :network_interface_id
    #   The ID of a network interface.
    #
    # @option params [required, String] :route_table_id
    #   The ID of the route table for the route.
    #
    # @option params [String] :vpc_peering_connection_id
    #   The ID of a VPC peering connection.
    #
    # @return [Types::CreateRouteResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRouteResult#return #return} => Boolean
    #
    #
    # @example Example: To create a route
    #
    #   # This example creates a route for the specified route table. The route matches all traffic (0.0.0.0/0) and routes it to the specified Internet gateway.
    #
    #   resp = client.create_route({
    #     destination_cidr_block: "0.0.0.0/0", 
    #     gateway_id: "igw-c0a643a9", 
    #     route_table_id: "rtb-22574640", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route({
    #     destination_cidr_block: "String",
    #     destination_ipv_6_cidr_block: "String",
    #     dry_run: false,
    #     egress_only_internet_gateway_id: "String",
    #     gateway_id: "String",
    #     instance_id: "String",
    #     nat_gateway_id: "String",
    #     network_interface_id: "String",
    #     route_table_id: "String", # required
    #     vpc_peering_connection_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateRoute AWS API Documentation
    #
    # @overload create_route(params = {})
    # @param [Hash] params ({})
    def create_route(params = {}, options = {})
      req = build_request(:create_route, params)
      req.send_request(options)
    end

    # Creates a route table for the specified VPC. After you create a route
    # table, you can add routes and associate the table with a subnet.
    #
    # For more information about route tables, see [Route Tables][1] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::CreateRouteTableResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRouteTableResult#route_table #route_table} => Types::RouteTable
    #
    #
    # @example Example: To create a route table
    #
    #   # This example creates a route table for the specified VPC.
    #
    #   resp = client.create_route_table({
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     route_table: {
    #       associations: [
    #       ], 
    #       propagating_vgws: [
    #       ], 
    #       route_table_id: "rtb-22574640", 
    #       routes: [
    #         {
    #           destination_cidr_block: "10.0.0.0/16", 
    #           gateway_id: "local", 
    #           state: "active", 
    #         }, 
    #       ], 
    #       tags: [
    #       ], 
    #       vpc_id: "vpc-a01106c2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route_table({
    #     dry_run: false,
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.route_table.associations #=> Array
    #   resp.route_table.associations[0].main #=> Boolean
    #   resp.route_table.associations[0].route_table_association_id #=> String
    #   resp.route_table.associations[0].route_table_id #=> String
    #   resp.route_table.associations[0].subnet_id #=> String
    #   resp.route_table.propagating_vgws #=> Array
    #   resp.route_table.propagating_vgws[0].gateway_id #=> String
    #   resp.route_table.route_table_id #=> String
    #   resp.route_table.routes #=> Array
    #   resp.route_table.routes[0].destination_cidr_block #=> String
    #   resp.route_table.routes[0].destination_ipv_6_cidr_block #=> String
    #   resp.route_table.routes[0].destination_prefix_list_id #=> String
    #   resp.route_table.routes[0].egress_only_internet_gateway_id #=> String
    #   resp.route_table.routes[0].gateway_id #=> String
    #   resp.route_table.routes[0].instance_id #=> String
    #   resp.route_table.routes[0].instance_owner_id #=> String
    #   resp.route_table.routes[0].nat_gateway_id #=> String
    #   resp.route_table.routes[0].network_interface_id #=> String
    #   resp.route_table.routes[0].origin #=> String, one of "CreateRouteTable", "CreateRoute", "EnableVgwRoutePropagation"
    #   resp.route_table.routes[0].state #=> String, one of "active", "blackhole"
    #   resp.route_table.routes[0].vpc_peering_connection_id #=> String
    #   resp.route_table.tags #=> Array
    #   resp.route_table.tags[0].key #=> String
    #   resp.route_table.tags[0].value #=> String
    #   resp.route_table.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateRouteTable AWS API Documentation
    #
    # @overload create_route_table(params = {})
    # @param [Hash] params ({})
    def create_route_table(params = {}, options = {})
      req = build_request(:create_route_table, params)
      req.send_request(options)
    end

    # Creates a security group.
    #
    # A security group is for use with instances either in the EC2-Classic
    # platform or in a specific VPC. For more information, see [Amazon EC2
    # Security Groups][1] in the *Amazon Elastic Compute Cloud User Guide*
    # and [Security Groups for Your VPC][2] in the *Amazon Virtual Private
    # Cloud User Guide*.
    #
    # EC2-Classic: You can have up to 500 security groups.
    #
    #  EC2-VPC: You can create up to 500 security groups per VPC.
    #
    # When you create a security group, you specify a friendly name of your
    # choice. You can have a security group for use in EC2-Classic with the
    # same name as a security group for use in a VPC. However, you can't
    # have two security groups for use in EC2-Classic with the same name or
    # two security groups for use in a VPC with the same name.
    #
    # You have a default security group for use in EC2-Classic and a default
    # security group for use in your VPC. If you don't specify a security
    # group when you launch an instance, the instance is launched into the
    # appropriate default security group. A default security group includes
    # a default rule that grants instances unrestricted network access to
    # each other.
    #
    # You can add or remove rules from your security groups using
    # AuthorizeSecurityGroupIngress, AuthorizeSecurityGroupEgress,
    # RevokeSecurityGroupIngress, and RevokeSecurityGroupEgress.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
    # [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #
    # @option params [required, String] :description
    #   A description for the security group. This is informational only.
    #
    #   Constraints: Up to 255 characters in length
    #
    #   Constraints for EC2-Classic: ASCII characters
    #
    #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
    #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$*
    #
    # @option params [required, String] :group_name
    #   The name of the security group.
    #
    #   Constraints: Up to 255 characters in length
    #
    #   Constraints for EC2-Classic: ASCII characters
    #
    #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
    #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$*
    #
    # @option params [String] :vpc_id
    #   \[EC2-VPC\] The ID of the VPC. Required for EC2-VPC.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateSecurityGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityGroupResult#group_id #group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_group({
    #     description: "String", # required
    #     group_name: "String", # required
    #     vpc_id: "String",
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSecurityGroup AWS API Documentation
    #
    # @overload create_security_group(params = {})
    # @param [Hash] params ({})
    def create_security_group(params = {}, options = {})
      req = build_request(:create_security_group, params)
      req.send_request(options)
    end

    # Creates a snapshot of an EBS volume and stores it in Amazon S3. You
    # can use snapshots for backups, to make copies of EBS volumes, and to
    # save data before shutting down an instance.
    #
    # When a snapshot is created, any AWS Marketplace product codes that are
    # associated with the source volume are propagated to the snapshot.
    #
    # You can take a snapshot of an attached volume that is in use. However,
    # snapshots only capture data that has been written to your EBS volume
    # at the time the snapshot command is issued; this may exclude any data
    # that has been cached by any applications or the operating system. If
    # you can pause any file systems on the volume long enough to take a
    # snapshot, your snapshot should be complete. However, if you cannot
    # pause all file writes to the volume, you should unmount the volume
    # from within the instance, issue the snapshot command, and then remount
    # the volume to ensure a consistent and complete snapshot. You may
    # remount and use your volume while the snapshot status is `pending`.
    #
    # To create a snapshot for EBS volumes that serve as root devices, you
    # should stop the instance before taking the snapshot.
    #
    # Snapshots that are taken from encrypted volumes are automatically
    # encrypted. Volumes that are created from encrypted snapshots are also
    # automatically encrypted. Your encrypted volumes and any associated
    # snapshots always remain protected.
    #
    # For more information, see [Amazon Elastic Block Store][1] and [Amazon
    # EBS Encryption][2] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #
    # @option params [String] :description
    #   A description for the snapshot.
    #
    # @option params [required, String] :volume_id
    #   The ID of the EBS volume.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::Snapshot] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Snapshot#data_encryption_key_id #data_encryption_key_id} => String
    #   * {Types::Snapshot#description #description} => String
    #   * {Types::Snapshot#encrypted #encrypted} => Boolean
    #   * {Types::Snapshot#kms_key_id #kms_key_id} => String
    #   * {Types::Snapshot#owner_id #owner_id} => String
    #   * {Types::Snapshot#progress #progress} => String
    #   * {Types::Snapshot#snapshot_id #snapshot_id} => String
    #   * {Types::Snapshot#start_time #start_time} => Time
    #   * {Types::Snapshot#state #state} => String
    #   * {Types::Snapshot#state_message #state_message} => String
    #   * {Types::Snapshot#volume_id #volume_id} => String
    #   * {Types::Snapshot#volume_size #volume_size} => Integer
    #   * {Types::Snapshot#owner_alias #owner_alias} => String
    #   * {Types::Snapshot#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: To create a snapshot
    #
    #   # This example creates a snapshot of the volume with a volume ID of ``vol-1234567890abcdef0`` and a short description to identify the snapshot.
    #
    #   resp = client.create_snapshot({
    #     description: "This is my root volume snapshot.", 
    #     volume_id: "vol-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     description: "This is my root volume snapshot.", 
    #     owner_id: "012345678910", 
    #     snapshot_id: "snap-066877671789bd71b", 
    #     start_time: Time.parse("2014-02-28T21:06:01.000Z"), 
    #     state: "pending", 
    #     tags: [
    #     ], 
    #     volume_id: "vol-1234567890abcdef0", 
    #     volume_size: 8, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     description: "String",
    #     volume_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_encryption_key_id #=> String
    #   resp.description #=> String
    #   resp.encrypted #=> Boolean
    #   resp.kms_key_id #=> String
    #   resp.owner_id #=> String
    #   resp.progress #=> String
    #   resp.snapshot_id #=> String
    #   resp.start_time #=> Time
    #   resp.state #=> String, one of "pending", "completed", "error"
    #   resp.state_message #=> String
    #   resp.volume_id #=> String
    #   resp.volume_size #=> Integer
    #   resp.owner_alias #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Creates a data feed for Spot instances, enabling you to view Spot
    # instance usage logs. You can create one data feed per AWS account. For
    # more information, see [Spot Instance Data Feed][1] in the *Amazon
    # Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html
    #
    # @option params [required, String] :bucket
    #   The Amazon S3 bucket in which to store the Spot instance data feed.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :prefix
    #   A prefix for the data feed file names.
    #
    # @return [Types::CreateSpotDatafeedSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSpotDatafeedSubscriptionResult#spot_datafeed_subscription #spot_datafeed_subscription} => Types::SpotDatafeedSubscription
    #
    #
    # @example Example: To create a Spot Instance datafeed
    #
    #   # This example creates a Spot Instance data feed for your AWS account.
    #
    #   resp = client.create_spot_datafeed_subscription({
    #     bucket: "my-s3-bucket", 
    #     prefix: "spotdata", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_datafeed_subscription: {
    #       bucket: "my-s3-bucket", 
    #       owner_id: "123456789012", 
    #       prefix: "spotdata", 
    #       state: "Active", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_spot_datafeed_subscription({
    #     bucket: "String", # required
    #     dry_run: false,
    #     prefix: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.spot_datafeed_subscription.bucket #=> String
    #   resp.spot_datafeed_subscription.fault.code #=> String
    #   resp.spot_datafeed_subscription.fault.message #=> String
    #   resp.spot_datafeed_subscription.owner_id #=> String
    #   resp.spot_datafeed_subscription.prefix #=> String
    #   resp.spot_datafeed_subscription.state #=> String, one of "Active", "Inactive"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSpotDatafeedSubscription AWS API Documentation
    #
    # @overload create_spot_datafeed_subscription(params = {})
    # @param [Hash] params ({})
    def create_spot_datafeed_subscription(params = {}, options = {})
      req = build_request(:create_spot_datafeed_subscription, params)
      req.send_request(options)
    end

    # Creates a subnet in an existing VPC.
    #
    # When you create each subnet, you provide the VPC ID and the CIDR block
    # you want for the subnet. After you create a subnet, you can't change
    # its CIDR block. The subnet's IPv4 CIDR block can be the same as the
    # VPC's IPv4 CIDR block (assuming you want only a single subnet in the
    # VPC), or a subset of the VPC's IPv4 CIDR block. If you create more
    # than one subnet in a VPC, the subnets' CIDR blocks must not overlap.
    # The smallest IPv4 subnet (and VPC) you can create uses a /28 netmask
    # (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4
    # addresses).
    #
    # If you've associated an IPv6 CIDR block with your VPC, you can create
    # a subnet with an IPv6 CIDR block that uses a /64 prefix length.
    #
    # AWS reserves both the first four and the last IPv4 address in each
    # subnet's CIDR block. They're not available for use.
    #
    # If you add more than one subnet to a VPC, they're set up in a star
    # topology with a logical router in the middle.
    #
    # If you launch an instance in a VPC using an Amazon EBS-backed AMI, the
    # IP address doesn't change if you stop and restart the instance
    # (unlike a similar instance launched outside a VPC, which gets a new IP
    # address when restarted). It's therefore possible to have a subnet
    # with no running instances (they're all stopped), but no remaining IP
    # addresses available.
    #
    # For more information about subnets, see [Your VPC and Subnets][1] in
    # the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html
    #
    # @option params [String] :availability_zone
    #   The Availability Zone for the subnet.
    #
    #   Default: AWS selects one for you. If you create more than one subnet
    #   in your VPC, we may not necessarily select a different zone for each
    #   subnet.
    #
    # @option params [required, String] :cidr_block
    #   The IPv4 network range for the subnet, in CIDR notation. For example,
    #   `10.0.0.0/24`.
    #
    # @option params [String] :ipv_6_cidr_block
    #   The IPv6 network range for the subnet, in CIDR notation. The subnet
    #   size must use a /64 prefix length.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateSubnetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubnetResult#subnet #subnet} => Types::Subnet
    #
    #
    # @example Example: To create a subnet
    #
    #   # This example creates a subnet in the specified VPC with the specified CIDR block. We recommend that you let us select an Availability Zone for you.
    #
    #   resp = client.create_subnet({
    #     cidr_block: "10.0.1.0/24", 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     subnet: {
    #       availability_zone: "us-west-2c", 
    #       available_ip_address_count: 251, 
    #       cidr_block: "10.0.1.0/24", 
    #       state: "pending", 
    #       subnet_id: "subnet-9d4a7b6c", 
    #       vpc_id: "vpc-a01106c2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subnet({
    #     availability_zone: "String",
    #     cidr_block: "String", # required
    #     ipv_6_cidr_block: "String",
    #     vpc_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.subnet.availability_zone #=> String
    #   resp.subnet.available_ip_address_count #=> Integer
    #   resp.subnet.cidr_block #=> String
    #   resp.subnet.default_for_az #=> Boolean
    #   resp.subnet.map_public_ip_on_launch #=> Boolean
    #   resp.subnet.state #=> String, one of "pending", "available"
    #   resp.subnet.subnet_id #=> String
    #   resp.subnet.vpc_id #=> String
    #   resp.subnet.assign_ipv_6_address_on_creation #=> Boolean
    #   resp.subnet.ipv_6_cidr_block_association_set #=> Array
    #   resp.subnet.ipv_6_cidr_block_association_set[0].association_id #=> String
    #   resp.subnet.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block #=> String
    #   resp.subnet.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.subnet.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.status_message #=> String
    #   resp.subnet.tags #=> Array
    #   resp.subnet.tags[0].key #=> String
    #   resp.subnet.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSubnet AWS API Documentation
    #
    # @overload create_subnet(params = {})
    # @param [Hash] params ({})
    def create_subnet(params = {}, options = {})
      req = build_request(:create_subnet, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified Amazon EC2
    # resource or resources. Each resource can have a maximum of 50 tags.
    # Each tag consists of a key and optional value. Tag keys must be unique
    # per resource.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon Elastic Compute Cloud User Guide*. For more information
    # about creating IAM policies that control users' access to resources
    # based on tags, see [Supported Resource-Level Permissions for Amazon
    # EC2 API Actions][2] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<String>] :resources
    #   The IDs of one or more resources to tag. For example, ami-1a2b3c4d.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags. The `value` parameter is required, but if you don't
    #   want the tag to have a value, specify the parameter with no value, and
    #   we set the value to an empty string.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add a tag to a resource
    #
    #   # This example adds the tag Stack=production to the specified image, or overwrites an existing tag for the AMI where the tag key is Stack.
    #
    #   resp = client.create_tags({
    #     resources: [
    #       "ami-78a54011", 
    #     ], 
    #     tags: [
    #       {
    #         key: "Stack", 
    #         value: "production", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     dry_run: false,
    #     resources: ["String"], # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Creates an EBS volume that can be attached to an instance in the same
    # Availability Zone. The volume is created in the regional endpoint that
    # you send the HTTP request to. For more information see [Regions and
    # Endpoints][1].
    #
    # You can create a new empty volume or restore a volume from an EBS
    # snapshot. Any AWS Marketplace product codes from the snapshot are
    # propagated to the volume.
    #
    # You can create encrypted volumes with the `Encrypted` parameter.
    # Encrypted volumes may only be attached to instances that support
    # Amazon EBS encryption. Volumes that are created from encrypted
    # snapshots are also automatically encrypted. For more information, see
    # [Amazon EBS Encryption][2] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    # You can tag your volumes during creation. For more information, see
    # [Tagging Your Amazon EC2 Resources][3].
    #
    # For more information, see [Creating an Amazon EBS Volume][4] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    # [3]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    # [4]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone in which to create the volume. Use
    #   DescribeAvailabilityZones to list the Availability Zones that are
    #   currently available to you.
    #
    # @option params [Boolean] :encrypted
    #   Specifies whether the volume should be encrypted. Encrypted Amazon EBS
    #   volumes may only be attached to instances that support Amazon EBS
    #   encryption. Volumes that are created from encrypted snapshots are
    #   automatically encrypted. There is no way to create an encrypted volume
    #   from an unencrypted snapshot or vice versa. If your AMI uses encrypted
    #   volumes, you can only launch it on supported instance types. For more
    #   information, see [Amazon EBS Encryption][1] in the *Amazon Elastic
    #   Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #
    # @option params [Integer] :iops
    #   Only valid for Provisioned IOPS SSD volumes. The number of I/O
    #   operations per second (IOPS) to provision for the volume, with a
    #   maximum ratio of 50 IOPS/GiB.
    #
    #   Constraint: Range is 100 to 20000 for Provisioned IOPS SSD volumes
    #
    # @option params [String] :kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) customer
    #   master key (CMK) to use when creating the encrypted volume. This
    #   parameter is only required if you want to use a non-default CMK; if
    #   this parameter is not specified, the default CMK for EBS is used. The
    #   ARN contains the `arn:aws:kms` namespace, followed by the region of
    #   the CMK, the AWS account ID of the CMK owner, the `key` namespace, and
    #   then the CMK ID. For example,
    #   arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #   If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
    #
    # @option params [Integer] :size
    #   The size of the volume, in GiBs.
    #
    #   Constraints: 1-16384 for `gp2`, 4-16384 for `io1`, 500-16384 for
    #   `st1`, 500-16384 for `sc1`, and 1-1024 for `standard`. If you specify
    #   a snapshot, the volume size must be equal to or larger than the
    #   snapshot size.
    #
    #   Default: If you're creating the volume from a snapshot and don't
    #   specify a volume size, the default is the snapshot size.
    #
    # @option params [String] :snapshot_id
    #   The snapshot from which to create the volume.
    #
    # @option params [String] :volume_type
    #   The volume type. This can be `gp2` for General Purpose SSD, `io1` for
    #   Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for
    #   Cold HDD, or `standard` for Magnetic volumes.
    #
    #   Default: `standard`
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the volume during creation.
    #
    # @return [Types::Volume] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Volume#attachments #attachments} => Array&lt;Types::VolumeAttachment&gt;
    #   * {Types::Volume#availability_zone #availability_zone} => String
    #   * {Types::Volume#create_time #create_time} => Time
    #   * {Types::Volume#encrypted #encrypted} => Boolean
    #   * {Types::Volume#kms_key_id #kms_key_id} => String
    #   * {Types::Volume#size #size} => Integer
    #   * {Types::Volume#snapshot_id #snapshot_id} => String
    #   * {Types::Volume#state #state} => String
    #   * {Types::Volume#volume_id #volume_id} => String
    #   * {Types::Volume#iops #iops} => Integer
    #   * {Types::Volume#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::Volume#volume_type #volume_type} => String
    #
    #
    # @example Example: To create a new volume
    #
    #   # This example creates an 80 GiB General Purpose (SSD) volume in the Availability Zone ``us-east-1a``.
    #
    #   resp = client.create_volume({
    #     availability_zone: "us-east-1a", 
    #     size: 80, 
    #     volume_type: "gp2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     availability_zone: "us-east-1a", 
    #     create_time: Time.parse("2016-08-29T18:52:32.724Z"), 
    #     encrypted: false, 
    #     iops: 240, 
    #     size: 80, 
    #     snapshot_id: "", 
    #     state: "creating", 
    #     volume_id: "vol-6b60b7c7", 
    #     volume_type: "gp2", 
    #   }
    #
    # @example Example: To create a new Provisioned IOPS (SSD) volume from a snapshot
    #
    #   # This example creates a new Provisioned IOPS (SSD) volume with 1000 provisioned IOPS from a snapshot in the Availability Zone ``us-east-1a``.
    #
    #   resp = client.create_volume({
    #     availability_zone: "us-east-1a", 
    #     iops: 1000, 
    #     snapshot_id: "snap-066877671789bd71b", 
    #     volume_type: "io1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attachments: [
    #     ], 
    #     availability_zone: "us-east-1a", 
    #     create_time: Time.parse("2016-08-29T18:52:32.724Z"), 
    #     iops: 1000, 
    #     size: 500, 
    #     snapshot_id: "snap-066877671789bd71b", 
    #     state: "creating", 
    #     tags: [
    #     ], 
    #     volume_id: "vol-1234567890abcdef0", 
    #     volume_type: "io1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_volume({
    #     availability_zone: "String", # required
    #     encrypted: false,
    #     iops: 1,
    #     kms_key_id: "String",
    #     size: 1,
    #     snapshot_id: "String",
    #     volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #     dry_run: false,
    #     tag_specifications: [
    #       {
    #         resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attachments #=> Array
    #   resp.attachments[0].attach_time #=> Time
    #   resp.attachments[0].device #=> String
    #   resp.attachments[0].instance_id #=> String
    #   resp.attachments[0].state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.attachments[0].volume_id #=> String
    #   resp.attachments[0].delete_on_termination #=> Boolean
    #   resp.availability_zone #=> String
    #   resp.create_time #=> Time
    #   resp.encrypted #=> Boolean
    #   resp.kms_key_id #=> String
    #   resp.size #=> Integer
    #   resp.snapshot_id #=> String
    #   resp.state #=> String, one of "creating", "available", "in-use", "deleting", "deleted", "error"
    #   resp.volume_id #=> String
    #   resp.iops #=> Integer
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVolume AWS API Documentation
    #
    # @overload create_volume(params = {})
    # @param [Hash] params ({})
    def create_volume(params = {}, options = {})
      req = build_request(:create_volume, params)
      req.send_request(options)
    end

    # Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you
    # can create uses a /28 netmask (16 IPv4 addresses), and the largest
    # uses a /16 netmask (65,536 IPv4 addresses). To help you decide how big
    # to make your VPC, see [Your VPC and Subnets][1] in the *Amazon Virtual
    # Private Cloud User Guide*.
    #
    # You can optionally request an Amazon-provided IPv6 CIDR block for the
    # VPC. The IPv6 CIDR block uses a /56 prefix length, and is allocated
    # from Amazon's pool of IPv6 addresses. You cannot choose the IPv6
    # range for your VPC.
    #
    # By default, each instance you launch in the VPC has the default DHCP
    # options, which includes only a default DNS server that we provide
    # (AmazonProvidedDNS). For more information about DHCP options, see
    # [DHCP Options Sets][2] in the *Amazon Virtual Private Cloud User
    # Guide*.
    #
    # You can specify the instance tenancy value for the VPC when you create
    # it. You can't change this value for the VPC after you create it. For
    # more information, see [Dedicated Instances][3] in the *Amazon Elastic
    # Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html
    # [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html
    # [3]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html
    #
    # @option params [required, String] :cidr_block
    #   The IPv4 network range for the VPC, in CIDR notation. For example,
    #   `10.0.0.0/16`.
    #
    # @option params [Boolean] :amazon_provided_ipv_6_cidr_block
    #   Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
    #   for the VPC. You cannot specify the range of IP addresses, or the size
    #   of the CIDR block.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :instance_tenancy
    #   The tenancy options for instances launched into the VPC. For
    #   `default`, instances are launched with shared tenancy by default. You
    #   can launch instances with any tenancy into a shared tenancy VPC. For
    #   `dedicated`, instances are launched as dedicated tenancy instances by
    #   default. You can only launch instances with a tenancy of `dedicated`
    #   or `host` into a dedicated tenancy VPC.
    #
    #   **Important:** The `host` value cannot be used with this parameter.
    #   Use the `default` or `dedicated` values only.
    #
    #   Default: `default`
    #
    # @return [Types::CreateVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcResult#vpc #vpc} => Types::Vpc
    #
    #
    # @example Example: To create a VPC
    #
    #   # This example creates a VPC with the specified CIDR block.
    #
    #   resp = client.create_vpc({
    #     cidr_block: "10.0.0.0/16", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     vpc: {
    #       cidr_block: "10.0.0.0/16", 
    #       dhcp_options_id: "dopt-7a8b9c2d", 
    #       instance_tenancy: "default", 
    #       state: "pending", 
    #       vpc_id: "vpc-a01106c2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc({
    #     cidr_block: "String", # required
    #     amazon_provided_ipv_6_cidr_block: false,
    #     dry_run: false,
    #     instance_tenancy: "default", # accepts default, dedicated, host
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc.cidr_block #=> String
    #   resp.vpc.dhcp_options_id #=> String
    #   resp.vpc.state #=> String, one of "pending", "available"
    #   resp.vpc.vpc_id #=> String
    #   resp.vpc.instance_tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.vpc.ipv_6_cidr_block_association_set #=> Array
    #   resp.vpc.ipv_6_cidr_block_association_set[0].association_id #=> String
    #   resp.vpc.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block #=> String
    #   resp.vpc.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.vpc.ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.status_message #=> String
    #   resp.vpc.is_default #=> Boolean
    #   resp.vpc.tags #=> Array
    #   resp.vpc.tags[0].key #=> String
    #   resp.vpc.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpc AWS API Documentation
    #
    # @overload create_vpc(params = {})
    # @param [Hash] params ({})
    def create_vpc(params = {}, options = {})
      req = build_request(:create_vpc, params)
      req.send_request(options)
    end

    # Creates a VPC endpoint for a specified AWS service. An endpoint
    # enables you to create a private connection between your VPC and
    # another AWS service in your account. You can specify an endpoint
    # policy to attach to the endpoint that will control access to the
    # service from your VPC. You can also specify the VPC route tables that
    # use the endpoint.
    #
    # Use DescribeVpcEndpointServices to get a list of supported AWS
    # services.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :policy_document
    #   A policy to attach to the endpoint that controls access to the
    #   service. The policy must be in valid JSON format. If this parameter is
    #   not specified, we attach a default policy that allows full access to
    #   the service.
    #
    # @option params [Array<String>] :route_table_ids
    #   One or more route table IDs.
    #
    # @option params [required, String] :service_name
    #   The AWS service name, in the form `com.amazonaws.region.service `. To
    #   get a list of available services, use the DescribeVpcEndpointServices
    #   request.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC in which the endpoint will be used.
    #
    # @return [Types::CreateVpcEndpointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcEndpointResult#client_token #client_token} => String
    #   * {Types::CreateVpcEndpointResult#vpc_endpoint #vpc_endpoint} => Types::VpcEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_endpoint({
    #     client_token: "String",
    #     dry_run: false,
    #     policy_document: "String",
    #     route_table_ids: ["String"],
    #     service_name: "String", # required
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.vpc_endpoint.creation_timestamp #=> Time
    #   resp.vpc_endpoint.policy_document #=> String
    #   resp.vpc_endpoint.route_table_ids #=> Array
    #   resp.vpc_endpoint.route_table_ids[0] #=> String
    #   resp.vpc_endpoint.service_name #=> String
    #   resp.vpc_endpoint.state #=> String, one of "Pending", "Available", "Deleting", "Deleted"
    #   resp.vpc_endpoint.vpc_endpoint_id #=> String
    #   resp.vpc_endpoint.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcEndpoint AWS API Documentation
    #
    # @overload create_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def create_vpc_endpoint(params = {}, options = {})
      req = build_request(:create_vpc_endpoint, params)
      req.send_request(options)
    end

    # Requests a VPC peering connection between two VPCs: a requester VPC
    # that you own and a peer VPC with which to create the connection. The
    # peer VPC can belong to another AWS account. The requester VPC and peer
    # VPC cannot have overlapping CIDR blocks.
    #
    # The owner of the peer VPC must accept the peering request to activate
    # the peering connection. The VPC peering connection request expires
    # after 7 days, after which it cannot be accepted or rejected.
    #
    # If you try to create a VPC peering connection between VPCs that have
    # overlapping CIDR blocks, the VPC peering connection status goes to
    # `failed`.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :peer_owner_id
    #   The AWS account ID of the owner of the peer VPC.
    #
    #   Default: Your AWS account ID
    #
    # @option params [String] :peer_vpc_id
    #   The ID of the VPC with which you are creating the VPC peering
    #   connection.
    #
    # @option params [String] :vpc_id
    #   The ID of the requester VPC.
    #
    # @return [Types::CreateVpcPeeringConnectionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcPeeringConnectionResult#vpc_peering_connection #vpc_peering_connection} => Types::VpcPeeringConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_peering_connection({
    #     dry_run: false,
    #     peer_owner_id: "String",
    #     peer_vpc_id: "String",
    #     vpc_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_peering_connection.accepter_vpc_info.cidr_block #=> String
    #   resp.vpc_peering_connection.accepter_vpc_info.ipv_6_cidr_block_set #=> Array
    #   resp.vpc_peering_connection.accepter_vpc_info.ipv_6_cidr_block_set[0].ipv_6_cidr_block #=> String
    #   resp.vpc_peering_connection.accepter_vpc_info.owner_id #=> String
    #   resp.vpc_peering_connection.accepter_vpc_info.peering_options.allow_dns_resolution_from_remote_vpc #=> Boolean
    #   resp.vpc_peering_connection.accepter_vpc_info.peering_options.allow_egress_from_local_classic_link_to_remote_vpc #=> Boolean
    #   resp.vpc_peering_connection.accepter_vpc_info.peering_options.allow_egress_from_local_vpc_to_remote_classic_link #=> Boolean
    #   resp.vpc_peering_connection.accepter_vpc_info.vpc_id #=> String
    #   resp.vpc_peering_connection.expiration_time #=> Time
    #   resp.vpc_peering_connection.requester_vpc_info.cidr_block #=> String
    #   resp.vpc_peering_connection.requester_vpc_info.ipv_6_cidr_block_set #=> Array
    #   resp.vpc_peering_connection.requester_vpc_info.ipv_6_cidr_block_set[0].ipv_6_cidr_block #=> String
    #   resp.vpc_peering_connection.requester_vpc_info.owner_id #=> String
    #   resp.vpc_peering_connection.requester_vpc_info.peering_options.allow_dns_resolution_from_remote_vpc #=> Boolean
    #   resp.vpc_peering_connection.requester_vpc_info.peering_options.allow_egress_from_local_classic_link_to_remote_vpc #=> Boolean
    #   resp.vpc_peering_connection.requester_vpc_info.peering_options.allow_egress_from_local_vpc_to_remote_classic_link #=> Boolean
    #   resp.vpc_peering_connection.requester_vpc_info.vpc_id #=> String
    #   resp.vpc_peering_connection.status.code #=> String, one of "initiating-request", "pending-acceptance", "active", "deleted", "rejected", "failed", "expired", "provisioning", "deleting"
    #   resp.vpc_peering_connection.status.message #=> String
    #   resp.vpc_peering_connection.tags #=> Array
    #   resp.vpc_peering_connection.tags[0].key #=> String
    #   resp.vpc_peering_connection.tags[0].value #=> String
    #   resp.vpc_peering_connection.vpc_peering_connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcPeeringConnection AWS API Documentation
    #
    # @overload create_vpc_peering_connection(params = {})
    # @param [Hash] params ({})
    def create_vpc_peering_connection(params = {}, options = {})
      req = build_request(:create_vpc_peering_connection, params)
      req.send_request(options)
    end

    # Creates a VPN connection between an existing virtual private gateway
    # and a VPN customer gateway. The only supported connection type is
    # `ipsec.1`.
    #
    # The response includes information that you need to give to your
    # network administrator to configure your customer gateway.
    #
    # We strongly recommend that you use HTTPS when calling this operation
    # because the response contains sensitive cryptographic information for
    # configuring your customer gateway.
    #
    # If you decide to shut down your VPN connection for any reason and
    # later create a new VPN connection, you must reconfigure your customer
    # gateway with the new information returned from this call.
    #
    # This is an idempotent operation. If you perform the operation more
    # than once, Amazon EC2 doesn't return an error.
    #
    # For more information about VPN connections, see [Adding a Hardware
    # Virtual Private Gateway to Your VPC][1] in the *Amazon Virtual Private
    # Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html
    #
    # @option params [required, String] :customer_gateway_id
    #   The ID of the customer gateway.
    #
    # @option params [required, String] :type
    #   The type of VPN connection (`ipsec.1`).
    #
    # @option params [required, String] :vpn_gateway_id
    #   The ID of the virtual private gateway.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Types::VpnConnectionOptionsSpecification] :options
    #   Indicates whether the VPN connection requires static routes. If you
    #   are creating a VPN connection for a device that does not support BGP,
    #   you must specify `true`.
    #
    #   Default: `false`
    #
    # @return [Types::CreateVpnConnectionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpnConnectionResult#vpn_connection #vpn_connection} => Types::VpnConnection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpn_connection({
    #     customer_gateway_id: "String", # required
    #     type: "String", # required
    #     vpn_gateway_id: "String", # required
    #     dry_run: false,
    #     options: {
    #       static_routes_only: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.vpn_connection.customer_gateway_configuration #=> String
    #   resp.vpn_connection.customer_gateway_id #=> String
    #   resp.vpn_connection.state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.vpn_connection.type #=> String, one of "ipsec.1"
    #   resp.vpn_connection.vpn_connection_id #=> String
    #   resp.vpn_connection.vpn_gateway_id #=> String
    #   resp.vpn_connection.options.static_routes_only #=> Boolean
    #   resp.vpn_connection.routes #=> Array
    #   resp.vpn_connection.routes[0].destination_cidr_block #=> String
    #   resp.vpn_connection.routes[0].source #=> String, one of "Static"
    #   resp.vpn_connection.routes[0].state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.vpn_connection.tags #=> Array
    #   resp.vpn_connection.tags[0].key #=> String
    #   resp.vpn_connection.tags[0].value #=> String
    #   resp.vpn_connection.vgw_telemetry #=> Array
    #   resp.vpn_connection.vgw_telemetry[0].accepted_route_count #=> Integer
    #   resp.vpn_connection.vgw_telemetry[0].last_status_change #=> Time
    #   resp.vpn_connection.vgw_telemetry[0].outside_ip_address #=> String
    #   resp.vpn_connection.vgw_telemetry[0].status #=> String, one of "UP", "DOWN"
    #   resp.vpn_connection.vgw_telemetry[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnConnection AWS API Documentation
    #
    # @overload create_vpn_connection(params = {})
    # @param [Hash] params ({})
    def create_vpn_connection(params = {}, options = {})
      req = build_request(:create_vpn_connection, params)
      req.send_request(options)
    end

    # Creates a static route associated with a VPN connection between an
    # existing virtual private gateway and a VPN customer gateway. The
    # static route allows traffic to be routed from the virtual private
    # gateway to the VPN customer gateway.
    #
    # For more information about VPN connections, see [Adding a Hardware
    # Virtual Private Gateway to Your VPC][1] in the *Amazon Virtual Private
    # Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html
    #
    # @option params [required, String] :destination_cidr_block
    #   The CIDR block associated with the local subnet of the customer
    #   network.
    #
    # @option params [required, String] :vpn_connection_id
    #   The ID of the VPN connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpn_connection_route({
    #     destination_cidr_block: "String", # required
    #     vpn_connection_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnConnectionRoute AWS API Documentation
    #
    # @overload create_vpn_connection_route(params = {})
    # @param [Hash] params ({})
    def create_vpn_connection_route(params = {}, options = {})
      req = build_request(:create_vpn_connection_route, params)
      req.send_request(options)
    end

    # Creates a virtual private gateway. A virtual private gateway is the
    # endpoint on the VPC side of your VPN connection. You can create a
    # virtual private gateway before creating the VPC itself.
    #
    # For more information about virtual private gateways, see [Adding a
    # Hardware Virtual Private Gateway to Your VPC][1] in the *Amazon
    # Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html
    #
    # @option params [String] :availability_zone
    #   The Availability Zone for the virtual private gateway.
    #
    # @option params [required, String] :type
    #   The type of VPN connection this virtual private gateway supports.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateVpnGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpnGatewayResult#vpn_gateway #vpn_gateway} => Types::VpnGateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpn_gateway({
    #     availability_zone: "String",
    #     type: "ipsec.1", # required, accepts ipsec.1
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpn_gateway.availability_zone #=> String
    #   resp.vpn_gateway.state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.vpn_gateway.type #=> String, one of "ipsec.1"
    #   resp.vpn_gateway.vpc_attachments #=> Array
    #   resp.vpn_gateway.vpc_attachments[0].state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.vpn_gateway.vpc_attachments[0].vpc_id #=> String
    #   resp.vpn_gateway.vpn_gateway_id #=> String
    #   resp.vpn_gateway.tags #=> Array
    #   resp.vpn_gateway.tags[0].key #=> String
    #   resp.vpn_gateway.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnGateway AWS API Documentation
    #
    # @overload create_vpn_gateway(params = {})
    # @param [Hash] params ({})
    def create_vpn_gateway(params = {}, options = {})
      req = build_request(:create_vpn_gateway, params)
      req.send_request(options)
    end

    # Deletes the specified customer gateway. You must delete the VPN
    # connection before you can delete the customer gateway.
    #
    # @option params [required, String] :customer_gateway_id
    #   The ID of the customer gateway.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a customer gateway
    #
    #   # This example deletes the specified customer gateway.
    #
    #   resp = client.delete_customer_gateway({
    #     customer_gateway_id: "cgw-0e11f167", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_customer_gateway({
    #     customer_gateway_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteCustomerGateway AWS API Documentation
    #
    # @overload delete_customer_gateway(params = {})
    # @param [Hash] params ({})
    def delete_customer_gateway(params = {}, options = {})
      req = build_request(:delete_customer_gateway, params)
      req.send_request(options)
    end

    # Deletes the specified set of DHCP options. You must disassociate the
    # set of DHCP options before you can delete it. You can disassociate the
    # set of DHCP options by associating either a new set of options or the
    # default set of options with the VPC.
    #
    # @option params [required, String] :dhcp_options_id
    #   The ID of the DHCP options set.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a DHCP options set
    #
    #   # This example deletes the specified DHCP options set.
    #
    #   resp = client.delete_dhcp_options({
    #     dhcp_options_id: "dopt-d9070ebb", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dhcp_options({
    #     dhcp_options_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteDhcpOptions AWS API Documentation
    #
    # @overload delete_dhcp_options(params = {})
    # @param [Hash] params ({})
    def delete_dhcp_options(params = {}, options = {})
      req = build_request(:delete_dhcp_options, params)
      req.send_request(options)
    end

    # Deletes an egress-only Internet gateway.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :egress_only_internet_gateway_id
    #   The ID of the egress-only Internet gateway.
    #
    # @return [Types::DeleteEgressOnlyInternetGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEgressOnlyInternetGatewayResult#return_code #return_code} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_egress_only_internet_gateway({
    #     dry_run: false,
    #     egress_only_internet_gateway_id: "EgressOnlyInternetGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return_code #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteEgressOnlyInternetGateway AWS API Documentation
    #
    # @overload delete_egress_only_internet_gateway(params = {})
    # @param [Hash] params ({})
    def delete_egress_only_internet_gateway(params = {}, options = {})
      req = build_request(:delete_egress_only_internet_gateway, params)
      req.send_request(options)
    end

    # Deletes one or more flow logs.
    #
    # @option params [required, Array<String>] :flow_log_ids
    #   One or more flow log IDs.
    #
    # @return [Types::DeleteFlowLogsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFlowLogsResult#unsuccessful #unsuccessful} => Array&lt;Types::UnsuccessfulItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow_logs({
    #     flow_log_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unsuccessful #=> Array
    #   resp.unsuccessful[0].error.code #=> String
    #   resp.unsuccessful[0].error.message #=> String
    #   resp.unsuccessful[0].resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteFlowLogs AWS API Documentation
    #
    # @overload delete_flow_logs(params = {})
    # @param [Hash] params ({})
    def delete_flow_logs(params = {}, options = {})
      req = build_request(:delete_flow_logs, params)
      req.send_request(options)
    end

    # Deletes the specified Internet gateway. You must detach the Internet
    # gateway from the VPC before you can delete it.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :internet_gateway_id
    #   The ID of the Internet gateway.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an Internet gateway
    #
    #   # This example deletes the specified Internet gateway.
    #
    #   resp = client.delete_internet_gateway({
    #     internet_gateway_id: "igw-c0a643a9", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_internet_gateway({
    #     dry_run: false,
    #     internet_gateway_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteInternetGateway AWS API Documentation
    #
    # @overload delete_internet_gateway(params = {})
    # @param [Hash] params ({})
    def delete_internet_gateway(params = {}, options = {})
      req = build_request(:delete_internet_gateway, params)
      req.send_request(options)
    end

    # Deletes the specified key pair, by removing the public key from Amazon
    # EC2.
    #
    # @option params [required, String] :key_name
    #   The name of the key pair.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a key pair
    #
    #   # This example deletes the specified key pair.
    #
    #   resp = client.delete_key_pair({
    #     key_name: "my-key-pair", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key_pair({
    #     key_name: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteKeyPair AWS API Documentation
    #
    # @overload delete_key_pair(params = {})
    # @param [Hash] params ({})
    def delete_key_pair(params = {}, options = {})
      req = build_request(:delete_key_pair, params)
      req.send_request(options)
    end

    # Deletes the specified NAT gateway. Deleting a NAT gateway
    # disassociates its Elastic IP address, but does not release the address
    # from your account. Deleting a NAT gateway does not delete any NAT
    # gateway routes in your route tables.
    #
    # @option params [required, String] :nat_gateway_id
    #   The ID of the NAT gateway.
    #
    # @return [Types::DeleteNatGatewayResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNatGatewayResult#nat_gateway_id #nat_gateway_id} => String
    #
    #
    # @example Example: To delete a NAT gateway
    #
    #   # This example deletes the specified NAT gateway.
    #
    #   resp = client.delete_nat_gateway({
    #     nat_gateway_id: "nat-04ae55e711cec5680", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     nat_gateway_id: "nat-04ae55e711cec5680", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_nat_gateway({
    #     nat_gateway_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.nat_gateway_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNatGateway AWS API Documentation
    #
    # @overload delete_nat_gateway(params = {})
    # @param [Hash] params ({})
    def delete_nat_gateway(params = {}, options = {})
      req = build_request(:delete_nat_gateway, params)
      req.send_request(options)
    end

    # Deletes the specified network ACL. You can't delete the ACL if it's
    # associated with any subnets. You can't delete the default network
    # ACL.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :network_acl_id
    #   The ID of the network ACL.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a network ACL
    #
    #   # This example deletes the specified network ACL.
    #
    #   resp = client.delete_network_acl({
    #     network_acl_id: "acl-5fb85d36", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_acl({
    #     dry_run: false,
    #     network_acl_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkAcl AWS API Documentation
    #
    # @overload delete_network_acl(params = {})
    # @param [Hash] params ({})
    def delete_network_acl(params = {}, options = {})
      req = build_request(:delete_network_acl, params)
      req.send_request(options)
    end

    # Deletes the specified ingress or egress entry (rule) from the
    # specified network ACL.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Boolean] :egress
    #   Indicates whether the rule is an egress rule.
    #
    # @option params [required, String] :network_acl_id
    #   The ID of the network ACL.
    #
    # @option params [required, Integer] :rule_number
    #   The rule number of the entry to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a network ACL entry
    #
    #   # This example deletes ingress rule number 100 from the specified network ACL.
    #
    #   resp = client.delete_network_acl_entry({
    #     egress: true, 
    #     network_acl_id: "acl-5fb85d36", 
    #     rule_number: 100, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_acl_entry({
    #     dry_run: false,
    #     egress: false, # required
    #     network_acl_id: "String", # required
    #     rule_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkAclEntry AWS API Documentation
    #
    # @overload delete_network_acl_entry(params = {})
    # @param [Hash] params ({})
    def delete_network_acl_entry(params = {}, options = {})
      req = build_request(:delete_network_acl_entry, params)
      req.send_request(options)
    end

    # Deletes the specified network interface. You must detach the network
    # interface before you can delete it.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a network interface
    #
    #   # This example deletes the specified network interface.
    #
    #   resp = client.delete_network_interface({
    #     network_interface_id: "eni-e5aa89a3", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_interface({
    #     dry_run: false,
    #     network_interface_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkInterface AWS API Documentation
    #
    # @overload delete_network_interface(params = {})
    # @param [Hash] params ({})
    def delete_network_interface(params = {}, options = {})
      req = build_request(:delete_network_interface, params)
      req.send_request(options)
    end

    # Deletes a permission for a network interface. By default, you cannot
    # delete the permission if the account for which you're removing the
    # permission has attached the network interface to an instance. However,
    # you can force delete the permission, regardless of any attachment.
    #
    # @option params [required, String] :network_interface_permission_id
    #   The ID of the network interface permission.
    #
    # @option params [Boolean] :force
    #   Specify `true` to remove the permission even if the network interface
    #   is attached to an instance.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DeleteNetworkInterfacePermissionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNetworkInterfacePermissionResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_interface_permission({
    #     network_interface_permission_id: "String", # required
    #     force: false,
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkInterfacePermission AWS API Documentation
    #
    # @overload delete_network_interface_permission(params = {})
    # @param [Hash] params ({})
    def delete_network_interface_permission(params = {}, options = {})
      req = build_request(:delete_network_interface_permission, params)
      req.send_request(options)
    end

    # Deletes the specified placement group. You must terminate all
    # instances in the placement group before you can delete the placement
    # group. For more information about placement groups and cluster
    # instances, see [Cluster Instances][1] in the *Amazon Elastic Compute
    # Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :group_name
    #   The name of the placement group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a placement group
    #
    #   # This example deletes the specified placement group.
    
    #
    #   resp = client.delete_placement_group({
    #     group_name: "my-cluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_placement_group({
    #     dry_run: false,
    #     group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeletePlacementGroup AWS API Documentation
    #
    # @overload delete_placement_group(params = {})
    # @param [Hash] params ({})
    def delete_placement_group(params = {}, options = {})
      req = build_request(:delete_placement_group, params)
      req.send_request(options)
    end

    # Deletes the specified route from the specified route table.
    #
    # @option params [String] :destination_cidr_block
    #   The IPv4 CIDR range for the route. The value you specify must match
    #   the CIDR for the route exactly.
    #
    # @option params [String] :destination_ipv_6_cidr_block
    #   The IPv6 CIDR range for the route. The value you specify must match
    #   the CIDR for the route exactly.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :route_table_id
    #   The ID of the route table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a route
    #
    #   # This example deletes the specified route from the specified route table.
    #
    #   resp = client.delete_route({
    #     destination_cidr_block: "0.0.0.0/0", 
    #     route_table_id: "rtb-22574640", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route({
    #     destination_cidr_block: "String",
    #     destination_ipv_6_cidr_block: "String",
    #     dry_run: false,
    #     route_table_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteRoute AWS API Documentation
    #
    # @overload delete_route(params = {})
    # @param [Hash] params ({})
    def delete_route(params = {}, options = {})
      req = build_request(:delete_route, params)
      req.send_request(options)
    end

    # Deletes the specified route table. You must disassociate the route
    # table from any subnets before you can delete it. You can't delete the
    # main route table.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :route_table_id
    #   The ID of the route table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a route table
    #
    #   # This example deletes the specified route table.
    #
    #   resp = client.delete_route_table({
    #     route_table_id: "rtb-22574640", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_table({
    #     dry_run: false,
    #     route_table_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteRouteTable AWS API Documentation
    #
    # @overload delete_route_table(params = {})
    # @param [Hash] params ({})
    def delete_route_table(params = {}, options = {})
      req = build_request(:delete_route_table, params)
      req.send_request(options)
    end

    # Deletes a security group.
    #
    # If you attempt to delete a security group that is associated with an
    # instance, or is referenced by another security group, the operation
    # fails with `InvalidGroup.InUse` in EC2-Classic or
    # `DependencyViolation` in EC2-VPC.
    #
    # @option params [String] :group_id
    #   The ID of the security group. Required for a nondefault VPC.
    #
    # @option params [String] :group_name
    #   \[EC2-Classic, default VPC\] The name of the security group. You can
    #   specify either the security group name or the security group ID.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_group({
    #     group_id: "String",
    #     group_name: "String",
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSecurityGroup AWS API Documentation
    #
    # @overload delete_security_group(params = {})
    # @param [Hash] params ({})
    def delete_security_group(params = {}, options = {})
      req = build_request(:delete_security_group, params)
      req.send_request(options)
    end

    # Deletes the specified snapshot.
    #
    # When you make periodic snapshots of a volume, the snapshots are
    # incremental, and only the blocks on the device that have changed since
    # your last snapshot are saved in the new snapshot. When you delete a
    # snapshot, only the data not needed for any other snapshot is removed.
    # So regardless of which prior snapshots have been deleted, all active
    # snapshots will have access to all the information needed to restore
    # the volume.
    #
    # You cannot delete a snapshot of the root device of an EBS volume used
    # by a registered AMI. You must first de-register the AMI before you can
    # delete the snapshot.
    #
    # For more information, see [Deleting an Amazon EBS Snapshot][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the EBS snapshot.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a snapshot
    #
    #   # This example deletes a snapshot with the snapshot ID of ``snap-1234567890abcdef0``. If the command succeeds, no output is returned.
    #
    #   resp = client.delete_snapshot({
    #     snapshot_id: "snap-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot({
    #     snapshot_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSnapshot AWS API Documentation
    #
    # @overload delete_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_snapshot(params = {}, options = {})
      req = build_request(:delete_snapshot, params)
      req.send_request(options)
    end

    # Deletes the data feed for Spot instances.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To cancel a Spot Instance data feed subscription
    #
    #   # This example deletes a Spot data feed subscription for the account.
    #
    #   resp = client.delete_spot_datafeed_subscription({
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_spot_datafeed_subscription({
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSpotDatafeedSubscription AWS API Documentation
    #
    # @overload delete_spot_datafeed_subscription(params = {})
    # @param [Hash] params ({})
    def delete_spot_datafeed_subscription(params = {}, options = {})
      req = build_request(:delete_spot_datafeed_subscription, params)
      req.send_request(options)
    end

    # Deletes the specified subnet. You must terminate all running instances
    # in the subnet before you can delete the subnet.
    #
    # @option params [required, String] :subnet_id
    #   The ID of the subnet.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a subnet
    #
    #   # This example deletes the specified subnet.
    #
    #   resp = client.delete_subnet({
    #     subnet_id: "subnet-9d4a7b6c", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subnet({
    #     subnet_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSubnet AWS API Documentation
    #
    # @overload delete_subnet(params = {})
    # @param [Hash] params ({})
    def delete_subnet(params = {}, options = {})
      req = build_request(:delete_subnet, params)
      req.send_request(options)
    end

    # Deletes the specified set of tags from the specified set of resources.
    # This call is designed to follow a `DescribeTags` request.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<String>] :resources
    #   The ID of the resource. For example, ami-1a2b3c4d. You can specify
    #   more than one resource ID.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags to delete. If you omit the `value` parameter, we
    #   delete the tag regardless of its value. If you specify this parameter
    #   with an empty string as the value, we delete the key only if its value
    #   is an empty string.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a tag from a resource
    #
    #   # This example deletes the tag Stack=test from the specified image.
    #
    #   resp = client.delete_tags({
    #     resources: [
    #       "ami-78a54011", 
    #     ], 
    #     tags: [
    #       {
    #         key: "Stack", 
    #         value: "test", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     dry_run: false,
    #     resources: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Deletes the specified EBS volume. The volume must be in the
    # `available` state (not attached to an instance).
    #
    # <note markdown="1"> The volume may remain in the `deleting` state for several minutes.
    #
    #  </note>
    #
    # For more information, see [Deleting an Amazon EBS Volume][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a volume
    #
    #   # This example deletes an available volume with the volume ID of ``vol-049df61146c4d7901``. If the command succeeds, no output is returned.
    #
    #   resp = client.delete_volume({
    #     volume_id: "vol-049df61146c4d7901", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_volume({
    #     volume_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVolume AWS API Documentation
    #
    # @overload delete_volume(params = {})
    # @param [Hash] params ({})
    def delete_volume(params = {}, options = {})
      req = build_request(:delete_volume, params)
      req.send_request(options)
    end

    # Deletes the specified VPC. You must detach or delete all gateways and
    # resources that are associated with the VPC before you can delete it.
    # For example, you must terminate all instances running in the VPC,
    # delete all security groups associated with the VPC (except the default
    # one), delete all route tables associated with the VPC (except the
    # default one), and so on.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a VPC
    #
    #   # This example deletes the specified VPC.
    #
    #   resp = client.delete_vpc({
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc({
    #     vpc_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpc AWS API Documentation
    #
    # @overload delete_vpc(params = {})
    # @param [Hash] params ({})
    def delete_vpc(params = {}, options = {})
      req = build_request(:delete_vpc, params)
      req.send_request(options)
    end

    # Deletes one or more specified VPC endpoints. Deleting the endpoint
    # also deletes the endpoint routes in the route tables that were
    # associated with the endpoint.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<String>] :vpc_endpoint_ids
    #   One or more endpoint IDs.
    #
    # @return [Types::DeleteVpcEndpointsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVpcEndpointsResult#unsuccessful #unsuccessful} => Array&lt;Types::UnsuccessfulItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_endpoints({
    #     dry_run: false,
    #     vpc_endpoint_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unsuccessful #=> Array
    #   resp.unsuccessful[0].error.code #=> String
    #   resp.unsuccessful[0].error.message #=> String
    #   resp.unsuccessful[0].resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcEndpoints AWS API Documentation
    #
    # @overload delete_vpc_endpoints(params = {})
    # @param [Hash] params ({})
    def delete_vpc_endpoints(params = {}, options = {})
      req = build_request(:delete_vpc_endpoints, params)
      req.send_request(options)
    end

    # Deletes a VPC peering connection. Either the owner of the requester
    # VPC or the owner of the peer VPC can delete the VPC peering connection
    # if it's in the `active` state. The owner of the requester VPC can
    # delete a VPC peering connection in the `pending-acceptance` state.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #
    # @return [Types::DeleteVpcPeeringConnectionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVpcPeeringConnectionResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_peering_connection({
    #     dry_run: false,
    #     vpc_peering_connection_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcPeeringConnection AWS API Documentation
    #
    # @overload delete_vpc_peering_connection(params = {})
    # @param [Hash] params ({})
    def delete_vpc_peering_connection(params = {}, options = {})
      req = build_request(:delete_vpc_peering_connection, params)
      req.send_request(options)
    end

    # Deletes the specified VPN connection.
    #
    # If you're deleting the VPC and its associated components, we
    # recommend that you detach the virtual private gateway from the VPC and
    # delete the VPC before deleting the VPN connection. If you believe that
    # the tunnel credentials for your VPN connection have been compromised,
    # you can delete the VPN connection and create a new one that has new
    # keys, without needing to delete the VPC or virtual private gateway. If
    # you create a new VPN connection, you must reconfigure the customer
    # gateway using the new configuration information returned with the new
    # VPN connection ID.
    #
    # @option params [required, String] :vpn_connection_id
    #   The ID of the VPN connection.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpn_connection({
    #     vpn_connection_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnConnection AWS API Documentation
    #
    # @overload delete_vpn_connection(params = {})
    # @param [Hash] params ({})
    def delete_vpn_connection(params = {}, options = {})
      req = build_request(:delete_vpn_connection, params)
      req.send_request(options)
    end

    # Deletes the specified static route associated with a VPN connection
    # between an existing virtual private gateway and a VPN customer
    # gateway. The static route allows traffic to be routed from the virtual
    # private gateway to the VPN customer gateway.
    #
    # @option params [required, String] :destination_cidr_block
    #   The CIDR block associated with the local subnet of the customer
    #   network.
    #
    # @option params [required, String] :vpn_connection_id
    #   The ID of the VPN connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpn_connection_route({
    #     destination_cidr_block: "String", # required
    #     vpn_connection_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnConnectionRoute AWS API Documentation
    #
    # @overload delete_vpn_connection_route(params = {})
    # @param [Hash] params ({})
    def delete_vpn_connection_route(params = {}, options = {})
      req = build_request(:delete_vpn_connection_route, params)
      req.send_request(options)
    end

    # Deletes the specified virtual private gateway. We recommend that
    # before you delete a virtual private gateway, you detach it from the
    # VPC and delete the VPN connection. Note that you don't need to delete
    # the virtual private gateway if you plan to delete and recreate the VPN
    # connection between your VPC and your network.
    #
    # @option params [required, String] :vpn_gateway_id
    #   The ID of the virtual private gateway.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpn_gateway({
    #     vpn_gateway_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnGateway AWS API Documentation
    #
    # @overload delete_vpn_gateway(params = {})
    # @param [Hash] params ({})
    def delete_vpn_gateway(params = {}, options = {})
      req = build_request(:delete_vpn_gateway, params)
      req.send_request(options)
    end

    # Deregisters the specified AMI. After you deregister an AMI, it can't
    # be used to launch new instances.
    #
    # This command does not delete the AMI.
    #
    # @option params [required, String] :image_id
    #   The ID of the AMI.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_image({
    #     image_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeregisterImage AWS API Documentation
    #
    # @overload deregister_image(params = {})
    # @param [Hash] params ({})
    def deregister_image(params = {}, options = {})
      req = build_request(:deregister_image, params)
      req.send_request(options)
    end

    # Describes attributes of your AWS account. The following are the
    # supported account attributes:
    #
    # * `supported-platforms`\: Indicates whether your account can launch
    #   instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.
    #
    # * `default-vpc`\: The ID of the default VPC for your account, or
    #   `none`.
    #
    # * `max-instances`\: The maximum number of On-Demand instances that you
    #   can run.
    #
    # * `vpc-max-security-groups-per-interface`\: The maximum number of
    #   security groups that you can assign to a network interface.
    #
    # * `max-elastic-ips`\: The maximum number of Elastic IP addresses that
    #   you can allocate for use with EC2-Classic.
    #
    # * `vpc-max-elastic-ips`\: The maximum number of Elastic IP addresses
    #   that you can allocate for use with EC2-VPC.
    #
    # @option params [Array<String>] :attribute_names
    #   One or more account attribute names.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeAccountAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAttributesResult#account_attributes #account_attributes} => Array&lt;Types::AccountAttribute&gt;
    #
    #
    # @example Example: To describe a single attribute for your AWS account
    #
    #   # This example describes the supported-platforms attribute for your AWS account.
    #
    #   resp = client.describe_account_attributes({
    #     attribute_names: [
    #       "supported-platforms", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_attributes: [
    #       {
    #         attribute_name: "supported-platforms", 
    #         attribute_values: [
    #           {
    #             attribute_value: "EC2", 
    #           }, 
    #           {
    #             attribute_value: "VPC", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To describe all attributes for your AWS account
    #
    #   # This example describes the attributes for your AWS account.
    #
    #   resp = client.describe_account_attributes({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_attributes: [
    #       {
    #         attribute_name: "supported-platforms", 
    #         attribute_values: [
    #           {
    #             attribute_value: "EC2", 
    #           }, 
    #           {
    #             attribute_value: "VPC", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         attribute_name: "vpc-max-security-groups-per-interface", 
    #         attribute_values: [
    #           {
    #             attribute_value: "5", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         attribute_name: "max-elastic-ips", 
    #         attribute_values: [
    #           {
    #             attribute_value: "5", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         attribute_name: "max-instances", 
    #         attribute_values: [
    #           {
    #             attribute_value: "20", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         attribute_name: "vpc-max-elastic-ips", 
    #         attribute_values: [
    #           {
    #             attribute_value: "5", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         attribute_name: "default-vpc", 
    #         attribute_values: [
    #           {
    #             attribute_value: "none", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_attributes({
    #     attribute_names: ["supported-platforms"], # accepts supported-platforms, default-vpc
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_attributes #=> Array
    #   resp.account_attributes[0].attribute_name #=> String
    #   resp.account_attributes[0].attribute_values #=> Array
    #   resp.account_attributes[0].attribute_values[0].attribute_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Describes one or more of your Elastic IP addresses.
    #
    # An Elastic IP address is for use in either the EC2-Classic platform or
    # in a VPC. For more information, see [Elastic IP Addresses][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters. Filter names and values are case-sensitive.
    #
    #   * `allocation-id` - \[EC2-VPC\] The allocation ID for the address.
    #
    #   * `association-id` - \[EC2-VPC\] The association ID for the address.
    #
    #   * `domain` - Indicates whether the address is for use in EC2-Classic
    #     (`standard`) or in a VPC (`vpc`).
    #
    #   * `instance-id` - The ID of the instance the address is associated
    #     with, if any.
    #
    #   * `network-interface-id` - \[EC2-VPC\] The ID of the network interface
    #     that the address is associated with, if any.
    #
    #   * `network-interface-owner-id` - The AWS account ID of the owner.
    #
    #   * `private-ip-address` - \[EC2-VPC\] The private IP address associated
    #     with the Elastic IP address.
    #
    #   * `public-ip` - The Elastic IP address.
    #
    # @option params [Array<String>] :public_ips
    #   \[EC2-Classic\] One or more Elastic IP addresses.
    #
    #   Default: Describes all your Elastic IP addresses.
    #
    # @option params [Array<String>] :allocation_ids
    #   \[EC2-VPC\] One or more allocation IDs.
    #
    #   Default: Describes all your Elastic IP addresses.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeAddressesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAddressesResult#addresses #addresses} => Array&lt;Types::Address&gt;
    #
    #
    # @example Example: To describe your Elastic IP addresses
    #
    #   # This example describes your Elastic IP addresses.
    #
    #   resp = client.describe_addresses({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     addresses: [
    #       {
    #         domain: "standard", 
    #         instance_id: "i-1234567890abcdef0", 
    #         public_ip: "198.51.100.0", 
    #       }, 
    #       {
    #         allocation_id: "eipalloc-12345678", 
    #         association_id: "eipassoc-12345678", 
    #         domain: "vpc", 
    #         instance_id: "i-1234567890abcdef0", 
    #         network_interface_id: "eni-12345678", 
    #         network_interface_owner_id: "123456789012", 
    #         private_ip_address: "10.0.1.241", 
    #         public_ip: "203.0.113.0", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To describe your Elastic IP addresses for EC2-VPC
    #
    #   # This example describes your Elastic IP addresses for use with instances in a VPC.
    #
    #   resp = client.describe_addresses({
    #     filters: [
    #       {
    #         name: "domain", 
    #         values: [
    #           "vpc", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     addresses: [
    #       {
    #         allocation_id: "eipalloc-12345678", 
    #         association_id: "eipassoc-12345678", 
    #         domain: "vpc", 
    #         instance_id: "i-1234567890abcdef0", 
    #         network_interface_id: "eni-12345678", 
    #         network_interface_owner_id: "123456789012", 
    #         private_ip_address: "10.0.1.241", 
    #         public_ip: "203.0.113.0", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To describe your Elastic IP addresses for EC2-Classic
    #
    #   # This example describes your Elastic IP addresses for use with instances in EC2-Classic.
    #
    #   resp = client.describe_addresses({
    #     filters: [
    #       {
    #         name: "domain", 
    #         values: [
    #           "standard", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     addresses: [
    #       {
    #         domain: "standard", 
    #         instance_id: "i-1234567890abcdef0", 
    #         public_ip: "198.51.100.0", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addresses({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     public_ips: ["String"],
    #     allocation_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.addresses #=> Array
    #   resp.addresses[0].instance_id #=> String
    #   resp.addresses[0].public_ip #=> String
    #   resp.addresses[0].allocation_id #=> String
    #   resp.addresses[0].association_id #=> String
    #   resp.addresses[0].domain #=> String, one of "vpc", "standard"
    #   resp.addresses[0].network_interface_id #=> String
    #   resp.addresses[0].network_interface_owner_id #=> String
    #   resp.addresses[0].private_ip_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAddresses AWS API Documentation
    #
    # @overload describe_addresses(params = {})
    # @param [Hash] params ({})
    def describe_addresses(params = {}, options = {})
      req = build_request(:describe_addresses, params)
      req.send_request(options)
    end

    # Describes one or more of the Availability Zones that are available to
    # you. The results include zones only for the region you're currently
    # using. If there is an event impacting an Availability Zone, you can
    # use this request to view the state and any provided message for that
    # Availability Zone.
    #
    # For more information, see [Regions and Availability Zones][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `message` - Information about the Availability Zone.
    #
    #   * `region-name` - The name of the region for the Availability Zone
    #     (for example, `us-east-1`).
    #
    #   * `state` - The state of the Availability Zone (`available` \|
    #     `information` \| `impaired` \| `unavailable`).
    #
    #   * `zone-name` - The name of the Availability Zone (for example,
    #     `us-east-1a`).
    #
    # @option params [Array<String>] :zone_names
    #   The names of one or more Availability Zones.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeAvailabilityZonesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAvailabilityZonesResult#availability_zones #availability_zones} => Array&lt;Types::AvailabilityZone&gt;
    #
    #
    # @example Example: To describe your Availability Zones
    #
    #   # This example describes the Availability Zones that are available to you. The response includes Availability Zones only for the current region.
    #
    #   resp = client.describe_availability_zones({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     availability_zones: [
    #       {
    #         messages: [
    #         ], 
    #         region_name: "us-east-1", 
    #         state: "available", 
    #         zone_name: "us-east-1b", 
    #       }, 
    #       {
    #         messages: [
    #         ], 
    #         region_name: "us-east-1", 
    #         state: "available", 
    #         zone_name: "us-east-1c", 
    #       }, 
    #       {
    #         messages: [
    #         ], 
    #         region_name: "us-east-1", 
    #         state: "available", 
    #         zone_name: "us-east-1d", 
    #       }, 
    #       {
    #         messages: [
    #         ], 
    #         region_name: "us-east-1", 
    #         state: "available", 
    #         zone_name: "us-east-1e", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_availability_zones({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     zone_names: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0].state #=> String, one of "available", "information", "impaired", "unavailable"
    #   resp.availability_zones[0].messages #=> Array
    #   resp.availability_zones[0].messages[0].message #=> String
    #   resp.availability_zones[0].region_name #=> String
    #   resp.availability_zones[0].zone_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAvailabilityZones AWS API Documentation
    #
    # @overload describe_availability_zones(params = {})
    # @param [Hash] params ({})
    def describe_availability_zones(params = {}, options = {})
      req = build_request(:describe_availability_zones, params)
      req.send_request(options)
    end

    # Describes one or more of your bundling tasks.
    #
    # <note markdown="1"> Completed bundle tasks are listed for only a limited time. If your
    # bundle task is no longer in the list, you can still register an AMI
    # from it. Just use `RegisterImage` with the Amazon S3 bucket name and
    # image manifest name you provided to the bundle task.
    #
    #  </note>
    #
    # @option params [Array<String>] :bundle_ids
    #   One or more bundle task IDs.
    #
    #   Default: Describes all your bundle tasks.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `bundle-id` - The ID of the bundle task.
    #
    #   * `error-code` - If the task failed, the error code returned.
    #
    #   * `error-message` - If the task failed, the error message returned.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `progress` - The level of task completion, as a percentage (for
    #     example, 20%).
    #
    #   * `s3-bucket` - The Amazon S3 bucket to store the AMI.
    #
    #   * `s3-prefix` - The beginning of the AMI name.
    #
    #   * `start-time` - The time the task started (for example,
    #     2013-09-15T17:15:20.000Z).
    #
    #   * `state` - The state of the task (`pending` \| `waiting-for-shutdown`
    #     \| `bundling` \| `storing` \| `cancelling` \| `complete` \|
    #     `failed`).
    #
    #   * `update-time` - The time of the most recent update for the task.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeBundleTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBundleTasksResult#bundle_tasks #bundle_tasks} => Array&lt;Types::BundleTask&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bundle_tasks({
    #     bundle_ids: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bundle_tasks #=> Array
    #   resp.bundle_tasks[0].bundle_id #=> String
    #   resp.bundle_tasks[0].bundle_task_error.code #=> String
    #   resp.bundle_tasks[0].bundle_task_error.message #=> String
    #   resp.bundle_tasks[0].instance_id #=> String
    #   resp.bundle_tasks[0].progress #=> String
    #   resp.bundle_tasks[0].start_time #=> Time
    #   resp.bundle_tasks[0].state #=> String, one of "pending", "waiting-for-shutdown", "bundling", "storing", "cancelling", "complete", "failed"
    #   resp.bundle_tasks[0].storage.s3.aws_access_key_id #=> String
    #   resp.bundle_tasks[0].storage.s3.bucket #=> String
    #   resp.bundle_tasks[0].storage.s3.prefix #=> String
    #   resp.bundle_tasks[0].storage.s3.upload_policy #=> String
    #   resp.bundle_tasks[0].storage.s3.upload_policy_signature #=> String
    #   resp.bundle_tasks[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeBundleTasks AWS API Documentation
    #
    # @overload describe_bundle_tasks(params = {})
    # @param [Hash] params ({})
    def describe_bundle_tasks(params = {}, options = {})
      req = build_request(:describe_bundle_tasks, params)
      req.send_request(options)
    end

    # Describes one or more of your linked EC2-Classic instances. This
    # request only returns information about EC2-Classic instances linked to
    # a VPC through ClassicLink; you cannot use this request to return
    # information about other instances.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `group-id` - The ID of a VPC security group that's associated with
    #     the instance.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC that the instance is linked to.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :instance_ids
    #   One or more instance IDs. Must be instances linked to a VPC through
    #   ClassicLink.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results of the initial request can be seen by
    #   sending another request with the returned `NextToken` value. This
    #   value can be between 5 and 1000; if `MaxResults` is given a value
    #   larger than 1000, only 1000 results are returned. You cannot specify
    #   this parameter and the instance IDs parameter in the same request.
    #
    #   Constraint: If the value is greater than 1000, we return only 1000
    #   items.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @return [Types::DescribeClassicLinkInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClassicLinkInstancesResult#instances #instances} => Array&lt;Types::ClassicLinkInstance&gt;
    #   * {Types::DescribeClassicLinkInstancesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_classic_link_instances({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     instance_ids: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].groups #=> Array
    #   resp.instances[0].groups[0].group_name #=> String
    #   resp.instances[0].groups[0].group_id #=> String
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].tags #=> Array
    #   resp.instances[0].tags[0].key #=> String
    #   resp.instances[0].tags[0].value #=> String
    #   resp.instances[0].vpc_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeClassicLinkInstances AWS API Documentation
    #
    # @overload describe_classic_link_instances(params = {})
    # @param [Hash] params ({})
    def describe_classic_link_instances(params = {}, options = {})
      req = build_request(:describe_classic_link_instances, params)
      req.send_request(options)
    end

    # Describes one or more of your conversion tasks. For more information,
    # see the [VM Import/Export User Guide][1].
    #
    # For information about the import manifest referenced by this API
    # action, see [VM Import Manifest][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/vm-import/latest/userguide/
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html
    #
    # @option params [Array<String>] :conversion_task_ids
    #   One or more conversion task IDs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeConversionTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConversionTasksResult#conversion_tasks #conversion_tasks} => Array&lt;Types::ConversionTask&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conversion_tasks({
    #     conversion_task_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.conversion_tasks #=> Array
    #   resp.conversion_tasks[0].conversion_task_id #=> String
    #   resp.conversion_tasks[0].expiration_time #=> String
    #   resp.conversion_tasks[0].import_instance.description #=> String
    #   resp.conversion_tasks[0].import_instance.instance_id #=> String
    #   resp.conversion_tasks[0].import_instance.platform #=> String, one of "Windows"
    #   resp.conversion_tasks[0].import_instance.volumes #=> Array
    #   resp.conversion_tasks[0].import_instance.volumes[0].availability_zone #=> String
    #   resp.conversion_tasks[0].import_instance.volumes[0].bytes_converted #=> Integer
    #   resp.conversion_tasks[0].import_instance.volumes[0].description #=> String
    #   resp.conversion_tasks[0].import_instance.volumes[0].image.checksum #=> String
    #   resp.conversion_tasks[0].import_instance.volumes[0].image.format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.conversion_tasks[0].import_instance.volumes[0].image.import_manifest_url #=> String
    #   resp.conversion_tasks[0].import_instance.volumes[0].image.size #=> Integer
    #   resp.conversion_tasks[0].import_instance.volumes[0].status #=> String
    #   resp.conversion_tasks[0].import_instance.volumes[0].status_message #=> String
    #   resp.conversion_tasks[0].import_instance.volumes[0].volume.id #=> String
    #   resp.conversion_tasks[0].import_instance.volumes[0].volume.size #=> Integer
    #   resp.conversion_tasks[0].import_volume.availability_zone #=> String
    #   resp.conversion_tasks[0].import_volume.bytes_converted #=> Integer
    #   resp.conversion_tasks[0].import_volume.description #=> String
    #   resp.conversion_tasks[0].import_volume.image.checksum #=> String
    #   resp.conversion_tasks[0].import_volume.image.format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.conversion_tasks[0].import_volume.image.import_manifest_url #=> String
    #   resp.conversion_tasks[0].import_volume.image.size #=> Integer
    #   resp.conversion_tasks[0].import_volume.volume.id #=> String
    #   resp.conversion_tasks[0].import_volume.volume.size #=> Integer
    #   resp.conversion_tasks[0].state #=> String, one of "active", "cancelling", "cancelled", "completed"
    #   resp.conversion_tasks[0].status_message #=> String
    #   resp.conversion_tasks[0].tags #=> Array
    #   resp.conversion_tasks[0].tags[0].key #=> String
    #   resp.conversion_tasks[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeConversionTasks AWS API Documentation
    #
    # @overload describe_conversion_tasks(params = {})
    # @param [Hash] params ({})
    def describe_conversion_tasks(params = {}, options = {})
      req = build_request(:describe_conversion_tasks, params)
      req.send_request(options)
    end

    # Describes one or more of your VPN customer gateways.
    #
    # For more information about VPN customer gateways, see [Adding a
    # Hardware Virtual Private Gateway to Your VPC][1] in the *Amazon
    # Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html
    #
    # @option params [Array<String>] :customer_gateway_ids
    #   One or more customer gateway IDs.
    #
    #   Default: Describes all your customer gateways.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `bgp-asn` - The customer gateway's Border Gateway Protocol (BGP)
    #     Autonomous System Number (ASN).
    #
    #   * `customer-gateway-id` - The ID of the customer gateway.
    #
    #   * `ip-address` - The IP address of the customer gateway's
    #     Internet-routable external interface.
    #
    #   * `state` - The state of the customer gateway (`pending` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `type` - The type of customer gateway. Currently, the only supported
    #     type is `ipsec.1`.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeCustomerGatewaysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomerGatewaysResult#customer_gateways #customer_gateways} => Array&lt;Types::CustomerGateway&gt;
    #
    #
    # @example Example: To describe a customer gateway
    #
    #   # This example describes the specified customer gateway.
    #
    #   resp = client.describe_customer_gateways({
    #     customer_gateway_ids: [
    #       "cgw-0e11f167", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     customer_gateways: [
    #       {
    #         bgp_asn: "65534", 
    #         customer_gateway_id: "cgw-0e11f167", 
    #         ip_address: "12.1.2.3", 
    #         state: "available", 
    #         type: "ipsec.1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_customer_gateways({
    #     customer_gateway_ids: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_gateways #=> Array
    #   resp.customer_gateways[0].bgp_asn #=> String
    #   resp.customer_gateways[0].customer_gateway_id #=> String
    #   resp.customer_gateways[0].ip_address #=> String
    #   resp.customer_gateways[0].state #=> String
    #   resp.customer_gateways[0].type #=> String
    #   resp.customer_gateways[0].tags #=> Array
    #   resp.customer_gateways[0].tags[0].key #=> String
    #   resp.customer_gateways[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeCustomerGateways AWS API Documentation
    #
    # @overload describe_customer_gateways(params = {})
    # @param [Hash] params ({})
    def describe_customer_gateways(params = {}, options = {})
      req = build_request(:describe_customer_gateways, params)
      req.send_request(options)
    end

    # Describes one or more of your DHCP options sets.
    #
    # For more information about DHCP options sets, see [DHCP Options
    # Sets][1] in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html
    #
    # @option params [Array<String>] :dhcp_options_ids
    #   The IDs of one or more DHCP options sets.
    #
    #   Default: Describes all your DHCP options sets.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `dhcp-options-id` - The ID of a set of DHCP options.
    #
    #   * `key` - The key for one of the options (for example, `domain-name`).
    #
    #   * `value` - The value for one of the options.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeDhcpOptionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDhcpOptionsResult#dhcp_options #dhcp_options} => Array&lt;Types::DhcpOptions&gt;
    #
    #
    # @example Example: To describe a DHCP options set
    #
    #   # This example describes the specified DHCP options set.
    #
    #   resp = client.describe_dhcp_options({
    #     dhcp_options_ids: [
    #       "dopt-d9070ebb", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     dhcp_options: [
    #       {
    #         dhcp_configurations: [
    #           {
    #             key: "domain-name-servers", 
    #             values: [
    #               {
    #                 value: "10.2.5.2", 
    #               }, 
    #               {
    #                 value: "10.2.5.1", 
    #               }, 
    #             ], 
    #           }, 
    #         ], 
    #         dhcp_options_id: "dopt-d9070ebb", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dhcp_options({
    #     dhcp_options_ids: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.dhcp_options #=> Array
    #   resp.dhcp_options[0].dhcp_configurations #=> Array
    #   resp.dhcp_options[0].dhcp_configurations[0].key #=> String
    #   resp.dhcp_options[0].dhcp_configurations[0].values #=> Array
    #   resp.dhcp_options[0].dhcp_configurations[0].values[0] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.dhcp_options[0].dhcp_options_id #=> String
    #   resp.dhcp_options[0].tags #=> Array
    #   resp.dhcp_options[0].tags[0].key #=> String
    #   resp.dhcp_options[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeDhcpOptions AWS API Documentation
    #
    # @overload describe_dhcp_options(params = {})
    # @param [Hash] params ({})
    def describe_dhcp_options(params = {}, options = {})
      req = build_request(:describe_dhcp_options, params)
      req.send_request(options)
    end

    # Describes one or more of your egress-only Internet gateways.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :egress_only_internet_gateway_ids
    #   One or more egress-only Internet gateway IDs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `NextToken` value. This value can be between 5 and
    #   1000; if `MaxResults` is given a value larger than 1000, only 1000
    #   results are returned.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @return [Types::DescribeEgressOnlyInternetGatewaysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEgressOnlyInternetGatewaysResult#egress_only_internet_gateways #egress_only_internet_gateways} => Array&lt;Types::EgressOnlyInternetGateway&gt;
    #   * {Types::DescribeEgressOnlyInternetGatewaysResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_egress_only_internet_gateways({
    #     dry_run: false,
    #     egress_only_internet_gateway_ids: ["EgressOnlyInternetGatewayId"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.egress_only_internet_gateways #=> Array
    #   resp.egress_only_internet_gateways[0].attachments #=> Array
    #   resp.egress_only_internet_gateways[0].attachments[0].state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.egress_only_internet_gateways[0].attachments[0].vpc_id #=> String
    #   resp.egress_only_internet_gateways[0].egress_only_internet_gateway_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeEgressOnlyInternetGateways AWS API Documentation
    #
    # @overload describe_egress_only_internet_gateways(params = {})
    # @param [Hash] params ({})
    def describe_egress_only_internet_gateways(params = {}, options = {})
      req = build_request(:describe_egress_only_internet_gateways, params)
      req.send_request(options)
    end

    # Describes the Elastic GPUs associated with your instances. For more
    # information about Elastic GPUs, see [Amazon EC2 Elastic GPUs][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-gpus.html
    #
    # @option params [Array<String>] :elastic_gpu_ids
    #   One or more Elastic GPU IDs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone in which the Elastic GPU
    #     resides.
    #
    #   * `elastic-gpu-health` - The status of the Elastic GPU (`OK` \|
    #     `IMPAIRED`).
    #
    #   * `elastic-gpu-state` - The state of the Elastic GPU (`ATTACHED`).
    #
    #   * `elastic-gpu-type` - The type of Elastic GPU; for example,
    #     `eg1.medium`.
    #
    #   * `instance-id` - The ID of the instance to which the Elastic GPU is
    #     associated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value. This value can be between 5 and 1000.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::DescribeElasticGpusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeElasticGpusResult#elastic_gpu_set #elastic_gpu_set} => Array&lt;Types::ElasticGpus&gt;
    #   * {Types::DescribeElasticGpusResult#max_results #max_results} => Integer
    #   * {Types::DescribeElasticGpusResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_elastic_gpus({
    #     elastic_gpu_ids: ["String"],
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.elastic_gpu_set #=> Array
    #   resp.elastic_gpu_set[0].elastic_gpu_id #=> String
    #   resp.elastic_gpu_set[0].availability_zone #=> String
    #   resp.elastic_gpu_set[0].elastic_gpu_type #=> String
    #   resp.elastic_gpu_set[0].elastic_gpu_health.status #=> String, one of "OK", "IMPAIRED"
    #   resp.elastic_gpu_set[0].elastic_gpu_state #=> String, one of "ATTACHED"
    #   resp.elastic_gpu_set[0].instance_id #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeElasticGpus AWS API Documentation
    #
    # @overload describe_elastic_gpus(params = {})
    # @param [Hash] params ({})
    def describe_elastic_gpus(params = {}, options = {})
      req = build_request(:describe_elastic_gpus, params)
      req.send_request(options)
    end

    # Describes one or more of your export tasks.
    #
    # @option params [Array<String>] :export_task_ids
    #   One or more export task IDs.
    #
    # @return [Types::DescribeExportTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExportTasksResult#export_tasks #export_tasks} => Array&lt;Types::ExportTask&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export_tasks({
    #     export_task_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.export_tasks #=> Array
    #   resp.export_tasks[0].description #=> String
    #   resp.export_tasks[0].export_task_id #=> String
    #   resp.export_tasks[0].export_to_s3_task.container_format #=> String, one of "ova"
    #   resp.export_tasks[0].export_to_s3_task.disk_image_format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.export_tasks[0].export_to_s3_task.s3_bucket #=> String
    #   resp.export_tasks[0].export_to_s3_task.s3_key #=> String
    #   resp.export_tasks[0].instance_export_details.instance_id #=> String
    #   resp.export_tasks[0].instance_export_details.target_environment #=> String, one of "citrix", "vmware", "microsoft"
    #   resp.export_tasks[0].state #=> String, one of "active", "cancelling", "cancelled", "completed"
    #   resp.export_tasks[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeExportTasks AWS API Documentation
    #
    # @overload describe_export_tasks(params = {})
    # @param [Hash] params ({})
    def describe_export_tasks(params = {}, options = {})
      req = build_request(:describe_export_tasks, params)
      req.send_request(options)
    end

    # Describes one or more flow logs. To view the information in your flow
    # logs (the log streams for the network interfaces), you must use the
    # CloudWatch Logs console or the CloudWatch Logs API.
    #
    # @option params [Array<Types::Filter>] :filter
    #   One or more filters.
    #
    #   * `deliver-log-status` - The status of the logs delivery (`SUCCESS` \|
    #     `FAILED`).
    #
    #   * `flow-log-id` - The ID of the flow log.
    #
    #   * `log-group-name` - The name of the log group.
    #
    #   * `resource-id` - The ID of the VPC, subnet, or network interface.
    #
    #   * `traffic-type` - The type of traffic (`ACCEPT` \| `REJECT` \| `ALL`)
    #
    # @option params [Array<String>] :flow_log_ids
    #   One or more flow log IDs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `NextToken` value. This value can be between 5 and
    #   1000; if `MaxResults` is given a value larger than 1000, only 1000
    #   results are returned. You cannot specify this parameter and the flow
    #   log IDs parameter in the same request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @return [Types::DescribeFlowLogsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlowLogsResult#flow_logs #flow_logs} => Array&lt;Types::FlowLog&gt;
    #   * {Types::DescribeFlowLogsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow_logs({
    #     filter: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     flow_log_ids: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_logs #=> Array
    #   resp.flow_logs[0].creation_time #=> Time
    #   resp.flow_logs[0].deliver_logs_error_message #=> String
    #   resp.flow_logs[0].deliver_logs_permission_arn #=> String
    #   resp.flow_logs[0].deliver_logs_status #=> String
    #   resp.flow_logs[0].flow_log_id #=> String
    #   resp.flow_logs[0].flow_log_status #=> String
    #   resp.flow_logs[0].log_group_name #=> String
    #   resp.flow_logs[0].resource_id #=> String
    #   resp.flow_logs[0].traffic_type #=> String, one of "ACCEPT", "REJECT", "ALL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFlowLogs AWS API Documentation
    #
    # @overload describe_flow_logs(params = {})
    # @param [Hash] params ({})
    def describe_flow_logs(params = {}, options = {})
      req = build_request(:describe_flow_logs, params)
      req.send_request(options)
    end

    # Describes one or more available Amazon FPGA Images (AFIs). These
    # include public AFIs, private AFIs that you own, and AFIs owned by
    # other AWS accounts for which you have load permissions.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :fpga_image_ids
    #   One or more AFI IDs.
    #
    # @option params [Array<String>] :owners
    #   Filters the AFI by owner. Specify an AWS account ID, `self` (owner is
    #   the sender of the request), or an AWS owner alias (valid values are
    #   `amazon` \| `aws-marketplace`).
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `create-time` - The creation time of the AFI.
    #
    #   * `fpga-image-id` - The FPGA image identifier (AFI ID).
    #
    #   * `fpga-image-global-id` - The global FPGA image identifier (AGFI ID).
    #
    #   * `name` - The name of the AFI.
    #
    #   * `owner-id` - The AWS account ID of the AFI owner.
    #
    #   * `product-code` - The product code.
    #
    #   * `shell-version` - The version of the AWS Shell that was used to
    #     create the bitstream.
    #
    #   * `state` - The state of the AFI (`pending` \| `failed` \| `available`
    #     \| `unavailable`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `update-time` - The time of the most recent update.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::DescribeFpgaImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFpgaImagesResult#fpga_images #fpga_images} => Array&lt;Types::FpgaImage&gt;
    #   * {Types::DescribeFpgaImagesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fpga_images({
    #     dry_run: false,
    #     fpga_image_ids: ["String"],
    #     owners: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.fpga_images #=> Array
    #   resp.fpga_images[0].fpga_image_id #=> String
    #   resp.fpga_images[0].fpga_image_global_id #=> String
    #   resp.fpga_images[0].name #=> String
    #   resp.fpga_images[0].description #=> String
    #   resp.fpga_images[0].shell_version #=> String
    #   resp.fpga_images[0].pci_id.device_id #=> String
    #   resp.fpga_images[0].pci_id.vendor_id #=> String
    #   resp.fpga_images[0].pci_id.subsystem_id #=> String
    #   resp.fpga_images[0].pci_id.subsystem_vendor_id #=> String
    #   resp.fpga_images[0].state.code #=> String, one of "pending", "failed", "available", "unavailable"
    #   resp.fpga_images[0].state.message #=> String
    #   resp.fpga_images[0].create_time #=> Time
    #   resp.fpga_images[0].update_time #=> Time
    #   resp.fpga_images[0].owner_id #=> String
    #   resp.fpga_images[0].owner_alias #=> String
    #   resp.fpga_images[0].product_codes #=> Array
    #   resp.fpga_images[0].product_codes[0].product_code_id #=> String
    #   resp.fpga_images[0].product_codes[0].product_code_type #=> String, one of "devpay", "marketplace"
    #   resp.fpga_images[0].tags #=> Array
    #   resp.fpga_images[0].tags[0].key #=> String
    #   resp.fpga_images[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFpgaImages AWS API Documentation
    #
    # @overload describe_fpga_images(params = {})
    # @param [Hash] params ({})
    def describe_fpga_images(params = {}, options = {})
      req = build_request(:describe_fpga_images, params)
      req.send_request(options)
    end

    # Describes the Dedicated Host Reservations that are available to
    # purchase.
    #
    # The results describe all the Dedicated Host Reservation offerings,
    # including offerings that may not match the instance family and region
    # of your Dedicated Hosts. When purchasing an offering, ensure that the
    # the instance family and region of the offering matches that of the
    # Dedicated Host/s it will be associated with. For an overview of
    # supported instance types, see [Dedicated Hosts Overview][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html
    #
    # @option params [Array<Types::Filter>] :filter
    #   One or more filters.
    #
    #   * `instance-family` - The instance family of the offering (e.g.,
    #     `m4`).
    #
    #   * `payment-option` - The payment option (`NoUpfront` \|
    #     `PartialUpfront` \| `AllUpfront`).
    #
    # @option params [Integer] :max_duration
    #   This is the maximum duration of the reservation you'd like to
    #   purchase, specified in seconds. Reservations are available in one-year
    #   and three-year terms. The number of seconds specified must be the
    #   number of seconds in a year (365x24x60x60) times one of the supported
    #   durations (1 or 3). For example, specify 94608000 for three years.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `nextToken` value. This value can be between 5 and
    #   500; if `maxResults` is given a larger value than 500, you will
    #   receive an error.
    #
    # @option params [Integer] :min_duration
    #   This is the minimum duration of the reservation you'd like to
    #   purchase, specified in seconds. Reservations are available in one-year
    #   and three-year terms. The number of seconds specified must be the
    #   number of seconds in a year (365x24x60x60) times one of the supported
    #   durations (1 or 3). For example, specify 31536000 for one year.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [String] :offering_id
    #   The ID of the reservation offering.
    #
    # @return [Types::DescribeHostReservationOfferingsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHostReservationOfferingsResult#next_token #next_token} => String
    #   * {Types::DescribeHostReservationOfferingsResult#offering_set #offering_set} => Array&lt;Types::HostOffering&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_host_reservation_offerings({
    #     filter: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_duration: 1,
    #     max_results: 1,
    #     min_duration: 1,
    #     next_token: "String",
    #     offering_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.offering_set #=> Array
    #   resp.offering_set[0].currency_code #=> String, one of "USD"
    #   resp.offering_set[0].duration #=> Integer
    #   resp.offering_set[0].hourly_price #=> String
    #   resp.offering_set[0].instance_family #=> String
    #   resp.offering_set[0].offering_id #=> String
    #   resp.offering_set[0].payment_option #=> String, one of "AllUpfront", "PartialUpfront", "NoUpfront"
    #   resp.offering_set[0].upfront_price #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostReservationOfferings AWS API Documentation
    #
    # @overload describe_host_reservation_offerings(params = {})
    # @param [Hash] params ({})
    def describe_host_reservation_offerings(params = {}, options = {})
      req = build_request(:describe_host_reservation_offerings, params)
      req.send_request(options)
    end

    # Describes Dedicated Host Reservations which are associated with
    # Dedicated Hosts in your account.
    #
    # @option params [Array<Types::Filter>] :filter
    #   One or more filters.
    #
    #   * `instance-family` - The instance family (e.g., `m4`).
    #
    #   * `payment-option` - The payment option (`NoUpfront` \|
    #     `PartialUpfront` \| `AllUpfront`).
    #
    #   * `state` - The state of the reservation (`payment-pending` \|
    #     `payment-failed` \| `active` \| `retired`).
    #
    # @option params [Array<String>] :host_reservation_id_set
    #   One or more host reservation IDs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `nextToken` value. This value can be between 5 and
    #   500; if `maxResults` is given a larger value than 500, you will
    #   receive an error.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::DescribeHostReservationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHostReservationsResult#host_reservation_set #host_reservation_set} => Array&lt;Types::HostReservation&gt;
    #   * {Types::DescribeHostReservationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_host_reservations({
    #     filter: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     host_reservation_id_set: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.host_reservation_set #=> Array
    #   resp.host_reservation_set[0].count #=> Integer
    #   resp.host_reservation_set[0].currency_code #=> String, one of "USD"
    #   resp.host_reservation_set[0].duration #=> Integer
    #   resp.host_reservation_set[0].end #=> Time
    #   resp.host_reservation_set[0].host_id_set #=> Array
    #   resp.host_reservation_set[0].host_id_set[0] #=> String
    #   resp.host_reservation_set[0].host_reservation_id #=> String
    #   resp.host_reservation_set[0].hourly_price #=> String
    #   resp.host_reservation_set[0].instance_family #=> String
    #   resp.host_reservation_set[0].offering_id #=> String
    #   resp.host_reservation_set[0].payment_option #=> String, one of "AllUpfront", "PartialUpfront", "NoUpfront"
    #   resp.host_reservation_set[0].start #=> Time
    #   resp.host_reservation_set[0].state #=> String, one of "payment-pending", "payment-failed", "active", "retired"
    #   resp.host_reservation_set[0].upfront_price #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostReservations AWS API Documentation
    #
    # @overload describe_host_reservations(params = {})
    # @param [Hash] params ({})
    def describe_host_reservations(params = {}, options = {})
      req = build_request(:describe_host_reservations, params)
      req.send_request(options)
    end

    # Describes one or more of your Dedicated Hosts.
    #
    # The results describe only the Dedicated Hosts in the region you're
    # currently using. All listed instances consume capacity on your
    # Dedicated Host. Dedicated Hosts that have recently been released will
    # be listed with the state `released`.
    #
    # @option params [Array<Types::Filter>] :filter
    #   One or more filters.
    #
    #   * `instance-type` - The instance type size that the Dedicated Host is
    #     configured to support.
    #
    #   * `auto-placement` - Whether auto-placement is enabled or disabled
    #     (`on` \| `off`).
    #
    #   * `host-reservation-id` - The ID of the reservation assigned to this
    #     host.
    #
    #   * `client-token` - The idempotency token you provided when you
    #     launched the instance
    #
    #   * `state`- The allocation state of the Dedicated Host (`available` \|
    #     `under-assessment` \| `permanent-failure` \| `released` \|
    #     `released-permanent-failure`).
    #
    #   * `availability-zone` - The Availability Zone of the host.
    #
    # @option params [Array<String>] :host_ids
    #   The IDs of the Dedicated Hosts. The IDs are used for targeted instance
    #   launches.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `nextToken` value. This value can be between 5 and
    #   500; if `maxResults` is given a larger value than 500, you will
    #   receive an error. You cannot specify this parameter and the host IDs
    #   parameter in the same request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @return [Types::DescribeHostsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHostsResult#hosts #hosts} => Array&lt;Types::Host&gt;
    #   * {Types::DescribeHostsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hosts({
    #     filter: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     host_ids: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.hosts #=> Array
    #   resp.hosts[0].auto_placement #=> String, one of "on", "off"
    #   resp.hosts[0].availability_zone #=> String
    #   resp.hosts[0].available_capacity.available_instance_capacity #=> Array
    #   resp.hosts[0].available_capacity.available_instance_capacity[0].available_capacity #=> Integer
    #   resp.hosts[0].available_capacity.available_instance_capacity[0].instance_type #=> String
    #   resp.hosts[0].available_capacity.available_instance_capacity[0].total_capacity #=> Integer
    #   resp.hosts[0].available_capacity.available_v_cpus #=> Integer
    #   resp.hosts[0].client_token #=> String
    #   resp.hosts[0].host_id #=> String
    #   resp.hosts[0].host_properties.cores #=> Integer
    #   resp.hosts[0].host_properties.instance_type #=> String
    #   resp.hosts[0].host_properties.sockets #=> Integer
    #   resp.hosts[0].host_properties.total_v_cpus #=> Integer
    #   resp.hosts[0].host_reservation_id #=> String
    #   resp.hosts[0].instances #=> Array
    #   resp.hosts[0].instances[0].instance_id #=> String
    #   resp.hosts[0].instances[0].instance_type #=> String
    #   resp.hosts[0].state #=> String, one of "available", "under-assessment", "permanent-failure", "released", "released-permanent-failure"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHosts AWS API Documentation
    #
    # @overload describe_hosts(params = {})
    # @param [Hash] params ({})
    def describe_hosts(params = {}, options = {})
      req = build_request(:describe_hosts, params)
      req.send_request(options)
    end

    # Describes your IAM instance profile associations.
    #
    # @option params [Array<String>] :association_ids
    #   One or more IAM instance profile associations.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `state` - The state of the association (`associating` \|
    #     `associated` \| `disassociating` \| `disassociated`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::DescribeIamInstanceProfileAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIamInstanceProfileAssociationsResult#iam_instance_profile_associations #iam_instance_profile_associations} => Array&lt;Types::IamInstanceProfileAssociation&gt;
    #   * {Types::DescribeIamInstanceProfileAssociationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_iam_instance_profile_associations({
    #     association_ids: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_instance_profile_associations #=> Array
    #   resp.iam_instance_profile_associations[0].association_id #=> String
    #   resp.iam_instance_profile_associations[0].instance_id #=> String
    #   resp.iam_instance_profile_associations[0].iam_instance_profile.arn #=> String
    #   resp.iam_instance_profile_associations[0].iam_instance_profile.id #=> String
    #   resp.iam_instance_profile_associations[0].state #=> String, one of "associating", "associated", "disassociating", "disassociated"
    #   resp.iam_instance_profile_associations[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIamInstanceProfileAssociations AWS API Documentation
    #
    # @overload describe_iam_instance_profile_associations(params = {})
    # @param [Hash] params ({})
    def describe_iam_instance_profile_associations(params = {}, options = {})
      req = build_request(:describe_iam_instance_profile_associations, params)
      req.send_request(options)
    end

    # Describes the ID format settings for your resources on a per-region
    # basis, for example, to view which resource types are enabled for
    # longer IDs. This request only returns information about resource types
    # whose ID formats can be modified; it does not return information about
    # other resource types.
    #
    # The following resource types support longer IDs: `instance` \|
    # `reservation` \| `snapshot` \| `volume`.
    #
    # These settings apply to the IAM user who makes the request; they do
    # not apply to the entire AWS account. By default, an IAM user defaults
    # to the same settings as the root user, unless they explicitly override
    # the settings by running the ModifyIdFormat command. Resources created
    # with longer IDs are visible to all IAM users, regardless of these
    # settings and provided that they have permission to use the relevant
    # `Describe` command for the resource type.
    #
    # @option params [String] :resource
    #   The type of resource: `instance` \| `reservation` \| `snapshot` \|
    #   `volume`
    #
    # @return [Types::DescribeIdFormatResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdFormatResult#statuses #statuses} => Array&lt;Types::IdFormat&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_id_format({
    #     resource: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.statuses #=> Array
    #   resp.statuses[0].deadline #=> Time
    #   resp.statuses[0].resource #=> String
    #   resp.statuses[0].use_long_ids #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIdFormat AWS API Documentation
    #
    # @overload describe_id_format(params = {})
    # @param [Hash] params ({})
    def describe_id_format(params = {}, options = {})
      req = build_request(:describe_id_format, params)
      req.send_request(options)
    end

    # Describes the ID format settings for resources for the specified IAM
    # user, IAM role, or root user. For example, you can view the resource
    # types that are enabled for longer IDs. This request only returns
    # information about resource types whose ID formats can be modified; it
    # does not return information about other resource types. For more
    # information, see [Resource IDs][1] in the *Amazon Elastic Compute
    # Cloud User Guide*.
    #
    # The following resource types support longer IDs: `instance` \|
    # `reservation` \| `snapshot` \| `volume`.
    #
    # These settings apply to the principal specified in the request. They
    # do not apply to the principal that makes the request.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the principal, which can be an IAM role, IAM user, or the
    #   root user.
    #
    # @option params [String] :resource
    #   The type of resource: `instance` \| `reservation` \| `snapshot` \|
    #   `volume`
    #
    # @return [Types::DescribeIdentityIdFormatResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdentityIdFormatResult#statuses #statuses} => Array&lt;Types::IdFormat&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_id_format({
    #     principal_arn: "String", # required
    #     resource: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.statuses #=> Array
    #   resp.statuses[0].deadline #=> Time
    #   resp.statuses[0].resource #=> String
    #   resp.statuses[0].use_long_ids #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIdentityIdFormat AWS API Documentation
    #
    # @overload describe_identity_id_format(params = {})
    # @param [Hash] params ({})
    def describe_identity_id_format(params = {}, options = {})
      req = build_request(:describe_identity_id_format, params)
      req.send_request(options)
    end

    # Describes the specified attribute of the specified AMI. You can
    # specify only one attribute at a time.
    #
    # @option params [required, String] :attribute
    #   The AMI attribute.
    #
    #   **Note**\: Depending on your account privileges, the
    #   `blockDeviceMapping` attribute may return a `Client.AuthFailure`
    #   error. If this happens, use DescribeImages to get information about
    #   the block device mapping for the AMI.
    #
    # @option params [required, String] :image_id
    #   The ID of the AMI.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::ImageAttribute] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImageAttribute#block_device_mappings #block_device_mappings} => Array&lt;Types::BlockDeviceMapping&gt;
    #   * {Types::ImageAttribute#image_id #image_id} => String
    #   * {Types::ImageAttribute#launch_permissions #launch_permissions} => Array&lt;Types::LaunchPermission&gt;
    #   * {Types::ImageAttribute#product_codes #product_codes} => Array&lt;Types::ProductCode&gt;
    #   * {Types::ImageAttribute#description #description} => Types::AttributeValue
    #   * {Types::ImageAttribute#kernel_id #kernel_id} => Types::AttributeValue
    #   * {Types::ImageAttribute#ramdisk_id #ramdisk_id} => Types::AttributeValue
    #   * {Types::ImageAttribute#sriov_net_support #sriov_net_support} => Types::AttributeValue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_attribute({
    #     attribute: "description", # required, accepts description, kernel, ramdisk, launchPermission, productCodes, blockDeviceMapping, sriovNetSupport
    #     image_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.block_device_mappings #=> Array
    #   resp.block_device_mappings[0].device_name #=> String
    #   resp.block_device_mappings[0].virtual_name #=> String
    #   resp.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.block_device_mappings[0].no_device #=> String
    #   resp.image_id #=> String
    #   resp.launch_permissions #=> Array
    #   resp.launch_permissions[0].group #=> String, one of "all"
    #   resp.launch_permissions[0].user_id #=> String
    #   resp.product_codes #=> Array
    #   resp.product_codes[0].product_code_id #=> String
    #   resp.product_codes[0].product_code_type #=> String, one of "devpay", "marketplace"
    #   resp.description #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.kernel_id #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.ramdisk_id #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sriov_net_support #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImageAttribute AWS API Documentation
    #
    # @overload describe_image_attribute(params = {})
    # @param [Hash] params ({})
    def describe_image_attribute(params = {}, options = {})
      req = build_request(:describe_image_attribute, params)
      req.send_request(options)
    end

    # Describes one or more of the images (AMIs, AKIs, and ARIs) available
    # to you. Images available to you include public images, private images
    # that you own, and private images owned by other AWS accounts but for
    # which you have explicit launch permissions.
    #
    # <note markdown="1"> Deregistered images are included in the returned results for an
    # unspecified interval after deregistration.
    #
    #  </note>
    #
    # @option params [Array<String>] :executable_users
    #   Scopes the images by users with explicit launch permissions. Specify
    #   an AWS account ID, `self` (the sender of the request), or `all`
    #   (public AMIs).
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `architecture` - The image architecture (`i386` \| `x86_64`).
    #
    #   * `block-device-mapping.delete-on-termination` - A Boolean value that
    #     indicates whether the Amazon EBS volume is deleted on instance
    #     termination.
    #
    #   * `block-device-mapping.device-name` - The device name for the EBS
    #     volume (for example, `/dev/sdh`).
    #
    #   * `block-device-mapping.snapshot-id` - The ID of the snapshot used for
    #     the EBS volume.
    #
    #   * `block-device-mapping.volume-size` - The volume size of the EBS
    #     volume, in GiB.
    #
    #   * `block-device-mapping.volume-type` - The volume type of the EBS
    #     volume (`gp2` \| `io1` \| `st1 `\| `sc1` \| `standard`).
    #
    #   * `description` - The description of the image (provided during image
    #     creation).
    #
    #   * `ena-support` - A Boolean that indicates whether enhanced networking
    #     with ENA is enabled.
    #
    #   * `hypervisor` - The hypervisor type (`ovm` \| `xen`).
    #
    #   * `image-id` - The ID of the image.
    #
    #   * `image-type` - The image type (`machine` \| `kernel` \| `ramdisk`).
    #
    #   * `is-public` - A Boolean that indicates whether the image is public.
    #
    #   * `kernel-id` - The kernel ID.
    #
    #   * `manifest-location` - The location of the image manifest.
    #
    #   * `name` - The name of the AMI (provided during image creation).
    #
    #   * `owner-alias` - String value from an Amazon-maintained list
    #     (`amazon` \| `aws-marketplace` \| `microsoft`) of snapshot owners.
    #     Not to be confused with the user-configured AWS account alias, which
    #     is set from the IAM console.
    #
    #   * `owner-id` - The AWS account ID of the image owner.
    #
    #   * `platform` - The platform. To only list Windows-based AMIs, use
    #     `windows`.
    #
    #   * `product-code` - The product code.
    #
    #   * `product-code.type` - The type of the product code (`devpay` \|
    #     `marketplace`).
    #
    #   * `ramdisk-id` - The RAM disk ID.
    #
    #   * `root-device-name` - The name of the root device volume (for
    #     example, `/dev/sda1`).
    #
    #   * `root-device-type` - The type of the root device volume (`ebs` \|
    #     `instance-store`).
    #
    #   * `state` - The state of the image (`available` \| `pending` \|
    #     `failed`).
    #
    #   * `state-reason-code` - The reason code for the state change.
    #
    #   * `state-reason-message` - The message for the state change.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the tag-value filter. For example, if you use both
    #     the filter "tag-key=Purpose" and the filter "tag-value=X", you
    #     get any resources assigned both the tag key Purpose (regardless of
    #     what the tag's value is), and the tag value X (regardless of what
    #     the tag's key is). If you want to list only resources where Purpose
    #     is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `virtualization-type` - The virtualization type (`paravirtual` \|
    #     `hvm`).
    #
    # @option params [Array<String>] :image_ids
    #   One or more image IDs.
    #
    #   Default: Describes all images available to you.
    #
    # @option params [Array<String>] :owners
    #   Filters the images by the owner. Specify an AWS account ID, `self`
    #   (owner is the sender of the request), or an AWS owner alias (valid
    #   values are `amazon` \| `aws-marketplace` \| `microsoft`). Omitting
    #   this option returns all images for which you have launch permissions,
    #   regardless of ownership.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImagesResult#images #images} => Array&lt;Types::Image&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_images({
    #     executable_users: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     image_ids: ["String"],
    #     owners: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].architecture #=> String, one of "i386", "x86_64"
    #   resp.images[0].creation_date #=> String
    #   resp.images[0].image_id #=> String
    #   resp.images[0].image_location #=> String
    #   resp.images[0].image_type #=> String, one of "machine", "kernel", "ramdisk"
    #   resp.images[0].public #=> Boolean
    #   resp.images[0].kernel_id #=> String
    #   resp.images[0].owner_id #=> String
    #   resp.images[0].platform #=> String, one of "Windows"
    #   resp.images[0].product_codes #=> Array
    #   resp.images[0].product_codes[0].product_code_id #=> String
    #   resp.images[0].product_codes[0].product_code_type #=> String, one of "devpay", "marketplace"
    #   resp.images[0].ramdisk_id #=> String
    #   resp.images[0].state #=> String, one of "pending", "available", "invalid", "deregistered", "transient", "failed", "error"
    #   resp.images[0].block_device_mappings #=> Array
    #   resp.images[0].block_device_mappings[0].device_name #=> String
    #   resp.images[0].block_device_mappings[0].virtual_name #=> String
    #   resp.images[0].block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.images[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.images[0].block_device_mappings[0].ebs.iops #=> Integer
    #   resp.images[0].block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.images[0].block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.images[0].block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.images[0].block_device_mappings[0].no_device #=> String
    #   resp.images[0].description #=> String
    #   resp.images[0].ena_support #=> Boolean
    #   resp.images[0].hypervisor #=> String, one of "ovm", "xen"
    #   resp.images[0].image_owner_alias #=> String
    #   resp.images[0].name #=> String
    #   resp.images[0].root_device_name #=> String
    #   resp.images[0].root_device_type #=> String, one of "ebs", "instance-store"
    #   resp.images[0].sriov_net_support #=> String
    #   resp.images[0].state_reason.code #=> String
    #   resp.images[0].state_reason.message #=> String
    #   resp.images[0].tags #=> Array
    #   resp.images[0].tags[0].key #=> String
    #   resp.images[0].tags[0].value #=> String
    #   resp.images[0].virtualization_type #=> String, one of "hvm", "paravirtual"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImages AWS API Documentation
    #
    # @overload describe_images(params = {})
    # @param [Hash] params ({})
    def describe_images(params = {}, options = {})
      req = build_request(:describe_images, params)
      req.send_request(options)
    end

    # Displays details about an import virtual machine or import snapshot
    # tasks that are already created.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   Filter tasks using the `task-state` filter and one of the following
    #   values: active, completed, deleting, deleted.
    #
    # @option params [Array<String>] :import_task_ids
    #   A list of import image task IDs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   A token that indicates the next page of results.
    #
    # @return [Types::DescribeImportImageTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImportImageTasksResult#import_image_tasks #import_image_tasks} => Array&lt;Types::ImportImageTask&gt;
    #   * {Types::DescribeImportImageTasksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_import_image_tasks({
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     import_task_ids: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_image_tasks #=> Array
    #   resp.import_image_tasks[0].architecture #=> String
    #   resp.import_image_tasks[0].description #=> String
    #   resp.import_image_tasks[0].hypervisor #=> String
    #   resp.import_image_tasks[0].image_id #=> String
    #   resp.import_image_tasks[0].import_task_id #=> String
    #   resp.import_image_tasks[0].license_type #=> String
    #   resp.import_image_tasks[0].platform #=> String
    #   resp.import_image_tasks[0].progress #=> String
    #   resp.import_image_tasks[0].snapshot_details #=> Array
    #   resp.import_image_tasks[0].snapshot_details[0].description #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].device_name #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].disk_image_size #=> Float
    #   resp.import_image_tasks[0].snapshot_details[0].format #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].progress #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].snapshot_id #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].status #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].status_message #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].url #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].user_bucket.s3_bucket #=> String
    #   resp.import_image_tasks[0].snapshot_details[0].user_bucket.s3_key #=> String
    #   resp.import_image_tasks[0].status #=> String
    #   resp.import_image_tasks[0].status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImportImageTasks AWS API Documentation
    #
    # @overload describe_import_image_tasks(params = {})
    # @param [Hash] params ({})
    def describe_import_image_tasks(params = {}, options = {})
      req = build_request(:describe_import_image_tasks, params)
      req.send_request(options)
    end

    # Describes your import snapshot tasks.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    # @option params [Array<String>] :import_task_ids
    #   A list of import snapshot task IDs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   A token that indicates the next page of results.
    #
    # @return [Types::DescribeImportSnapshotTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImportSnapshotTasksResult#import_snapshot_tasks #import_snapshot_tasks} => Array&lt;Types::ImportSnapshotTask&gt;
    #   * {Types::DescribeImportSnapshotTasksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_import_snapshot_tasks({
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     import_task_ids: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_snapshot_tasks #=> Array
    #   resp.import_snapshot_tasks[0].description #=> String
    #   resp.import_snapshot_tasks[0].import_task_id #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.description #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.disk_image_size #=> Float
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.format #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.progress #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.snapshot_id #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.status #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.status_message #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.url #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.user_bucket.s3_bucket #=> String
    #   resp.import_snapshot_tasks[0].snapshot_task_detail.user_bucket.s3_key #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImportSnapshotTasks AWS API Documentation
    #
    # @overload describe_import_snapshot_tasks(params = {})
    # @param [Hash] params ({})
    def describe_import_snapshot_tasks(params = {}, options = {})
      req = build_request(:describe_import_snapshot_tasks, params)
      req.send_request(options)
    end

    # Describes the specified attribute of the specified instance. You can
    # specify only one attribute at a time. Valid attribute values are:
    # `instanceType` \| `kernel` \| `ramdisk` \| `userData` \|
    # `disableApiTermination` \| `instanceInitiatedShutdownBehavior` \|
    # `rootDeviceName` \| `blockDeviceMapping` \| `productCodes` \|
    # `sourceDestCheck` \| `groupSet` \| `ebsOptimized` \| `sriovNetSupport`
    #
    # @option params [required, String] :attribute
    #   The instance attribute.
    #
    #   Note: The `enaSupport` attribute is not supported at this time.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @return [Types::InstanceAttribute] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InstanceAttribute#groups #groups} => Array&lt;Types::GroupIdentifier&gt;
    #   * {Types::InstanceAttribute#block_device_mappings #block_device_mappings} => Array&lt;Types::InstanceBlockDeviceMapping&gt;
    #   * {Types::InstanceAttribute#disable_api_termination #disable_api_termination} => Types::AttributeBooleanValue
    #   * {Types::InstanceAttribute#ena_support #ena_support} => Types::AttributeBooleanValue
    #   * {Types::InstanceAttribute#ebs_optimized #ebs_optimized} => Types::AttributeBooleanValue
    #   * {Types::InstanceAttribute#instance_id #instance_id} => String
    #   * {Types::InstanceAttribute#instance_initiated_shutdown_behavior #instance_initiated_shutdown_behavior} => Types::AttributeValue
    #   * {Types::InstanceAttribute#instance_type #instance_type} => Types::AttributeValue
    #   * {Types::InstanceAttribute#kernel_id #kernel_id} => Types::AttributeValue
    #   * {Types::InstanceAttribute#product_codes #product_codes} => Array&lt;Types::ProductCode&gt;
    #   * {Types::InstanceAttribute#ramdisk_id #ramdisk_id} => Types::AttributeValue
    #   * {Types::InstanceAttribute#root_device_name #root_device_name} => Types::AttributeValue
    #   * {Types::InstanceAttribute#source_dest_check #source_dest_check} => Types::AttributeBooleanValue
    #   * {Types::InstanceAttribute#sriov_net_support #sriov_net_support} => Types::AttributeValue
    #   * {Types::InstanceAttribute#user_data #user_data} => Types::AttributeValue
    #
    #
    # @example Example: To describe the instance type
    #
    #   # This example describes the instance type of the specified instance.
    
    #
    #   resp = client.describe_instance_attribute({
    #     attribute: "instanceType", 
    #     instance_id: "i-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance_id: "i-1234567890abcdef0", 
    #     instance_type: {
    #       value: "t1.micro", 
    #     }, 
    #   }
    #
    # @example Example: To describe the disableApiTermination attribute
    #
    #   # This example describes the ``disableApiTermination`` attribute of the specified instance.
    
    #
    #   resp = client.describe_instance_attribute({
    #     attribute: "disableApiTermination", 
    #     instance_id: "i-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     disable_api_termination: {
    #       value: false, 
    #     }, 
    #     instance_id: "i-1234567890abcdef0", 
    #   }
    #
    # @example Example: To describe the block device mapping for an instance
    #
    #   # This example describes the ``blockDeviceMapping`` attribute of the specified instance.
    
    #
    #   resp = client.describe_instance_attribute({
    #     attribute: "blockDeviceMapping", 
    #     instance_id: "i-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     block_device_mappings: [
    #       {
    #         device_name: "/dev/sda1", 
    #         ebs: {
    #           attach_time: Time.parse("2013-05-17T22:42:34.000Z"), 
    #           delete_on_termination: true, 
    #           status: "attached", 
    #           volume_id: "vol-049df61146c4d7901", 
    #         }, 
    #       }, 
    #       {
    #         device_name: "/dev/sdf", 
    #         ebs: {
    #           attach_time: Time.parse("2013-09-10T23:07:00.000Z"), 
    #           delete_on_termination: false, 
    #           status: "attached", 
    #           volume_id: "vol-049df61146c4d7901", 
    #         }, 
    #       }, 
    #     ], 
    #     instance_id: "i-1234567890abcdef0", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_attribute({
    #     attribute: "instanceType", # required, accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport
    #     dry_run: false,
    #     instance_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].group_id #=> String
    #   resp.block_device_mappings #=> Array
    #   resp.block_device_mappings[0].device_name #=> String
    #   resp.block_device_mappings[0].ebs.attach_time #=> Time
    #   resp.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.block_device_mappings[0].ebs.status #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.block_device_mappings[0].ebs.volume_id #=> String
    #   resp.disable_api_termination.value #=> Boolean
    #   resp.ena_support.value #=> Boolean
    #   resp.ebs_optimized.value #=> Boolean
    #   resp.instance_id #=> String
    #   resp.instance_initiated_shutdown_behavior #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.instance_type #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.kernel_id #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.product_codes #=> Array
    #   resp.product_codes[0].product_code_id #=> String
    #   resp.product_codes[0].product_code_type #=> String, one of "devpay", "marketplace"
    #   resp.ramdisk_id #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.root_device_name #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.source_dest_check.value #=> Boolean
    #   resp.sriov_net_support #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.user_data #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstanceAttribute AWS API Documentation
    #
    # @overload describe_instance_attribute(params = {})
    # @param [Hash] params ({})
    def describe_instance_attribute(params = {}, options = {})
      req = build_request(:describe_instance_attribute, params)
      req.send_request(options)
    end

    # Describes the status of one or more instances. By default, only
    # running instances are described, unless you specifically indicate to
    # return the status of all instances.
    #
    # Instance status includes the following components:
    #
    # * **Status checks** - Amazon EC2 performs status checks on running EC2
    #   instances to identify hardware and software issues. For more
    #   information, see [Status Checks for Your Instances][1] and
    #   [Troubleshooting Instances with Failed Status Checks][2] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    # * **Scheduled events** - Amazon EC2 can schedule events (such as
    #   reboot, stop, or terminate) for your instances related to hardware
    #   issues, software updates, or system maintenance. For more
    #   information, see [Scheduled Events for Your Instances][3] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    # * **Instance state** - You can manage your instances from the moment
    #   you launch them through their termination. For more information, see
    #   [Instance Lifecycle][4] in the *Amazon Elastic Compute Cloud User
    #   Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html
    # [3]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html
    # [4]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `event.code` - The code for the scheduled event (`instance-reboot`
    #     \| `system-reboot` \| `system-maintenance` \| `instance-retirement`
    #     \| `instance-stop`).
    #
    #   * `event.description` - A description of the event.
    #
    #   * `event.not-after` - The latest end time for the scheduled event (for
    #     example, `2014-09-15T17:15:20.000Z`).
    #
    #   * `event.not-before` - The earliest start time for the scheduled event
    #     (for example, `2014-09-15T17:15:20.000Z`).
    #
    #   * `instance-state-code` - The code for the instance state, as a 16-bit
    #     unsigned integer. The high byte is an opaque internal value and
    #     should be ignored. The low byte is set based on the state
    #     represented. The valid values are 0 (pending), 16 (running), 32
    #     (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
    #
    #   * `instance-state-name` - The state of the instance (`pending` \|
    #     `running` \| `shutting-down` \| `terminated` \| `stopping` \|
    #     `stopped`).
    #
    #   * `instance-status.reachability` - Filters on instance status where
    #     the name is `reachability` (`passed` \| `failed` \| `initializing`
    #     \| `insufficient-data`).
    #
    #   * `instance-status.status` - The status of the instance (`ok` \|
    #     `impaired` \| `initializing` \| `insufficient-data` \|
    #     `not-applicable`).
    #
    #   * `system-status.reachability` - Filters on system status where the
    #     name is `reachability` (`passed` \| `failed` \| `initializing` \|
    #     `insufficient-data`).
    #
    #   * `system-status.status` - The system status of the instance (`ok` \|
    #     `impaired` \| `initializing` \| `insufficient-data` \|
    #     `not-applicable`).
    #
    # @option params [Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    #   Default: Describes all your instances.
    #
    #   Constraints: Maximum 100 explicitly specified instance IDs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value. This value can be between 5 and 1000. You cannot specify this
    #   parameter and the instance IDs parameter in the same call.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Boolean] :include_all_instances
    #   When `true`, includes the health status for all instances. When
    #   `false`, includes the health status for running instances only.
    #
    #   Default: `false`
    #
    # @return [Types::DescribeInstanceStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceStatusResult#instance_statuses #instance_statuses} => Array&lt;Types::InstanceStatus&gt;
    #   * {Types::DescribeInstanceStatusResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_status({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     instance_ids: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #     dry_run: false,
    #     include_all_instances: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_statuses #=> Array
    #   resp.instance_statuses[0].availability_zone #=> String
    #   resp.instance_statuses[0].events #=> Array
    #   resp.instance_statuses[0].events[0].code #=> String, one of "instance-reboot", "system-reboot", "system-maintenance", "instance-retirement", "instance-stop"
    #   resp.instance_statuses[0].events[0].description #=> String
    #   resp.instance_statuses[0].events[0].not_after #=> Time
    #   resp.instance_statuses[0].events[0].not_before #=> Time
    #   resp.instance_statuses[0].instance_id #=> String
    #   resp.instance_statuses[0].instance_state.code #=> Integer
    #   resp.instance_statuses[0].instance_state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #   resp.instance_statuses[0].instance_status.details #=> Array
    #   resp.instance_statuses[0].instance_status.details[0].impaired_since #=> Time
    #   resp.instance_statuses[0].instance_status.details[0].name #=> String, one of "reachability"
    #   resp.instance_statuses[0].instance_status.details[0].status #=> String, one of "passed", "failed", "insufficient-data", "initializing"
    #   resp.instance_statuses[0].instance_status.status #=> String, one of "ok", "impaired", "insufficient-data", "not-applicable", "initializing"
    #   resp.instance_statuses[0].system_status.details #=> Array
    #   resp.instance_statuses[0].system_status.details[0].impaired_since #=> Time
    #   resp.instance_statuses[0].system_status.details[0].name #=> String, one of "reachability"
    #   resp.instance_statuses[0].system_status.details[0].status #=> String, one of "passed", "failed", "insufficient-data", "initializing"
    #   resp.instance_statuses[0].system_status.status #=> String, one of "ok", "impaired", "insufficient-data", "not-applicable", "initializing"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstanceStatus AWS API Documentation
    #
    # @overload describe_instance_status(params = {})
    # @param [Hash] params ({})
    def describe_instance_status(params = {}, options = {})
      req = build_request(:describe_instance_status, params)
      req.send_request(options)
    end

    # Describes one or more of your instances.
    #
    # If you specify one or more instance IDs, Amazon EC2 returns
    # information for those instances. If you do not specify instance IDs,
    # Amazon EC2 returns information for all relevant instances. If you
    # specify an instance ID that is not valid, an error is returned. If you
    # specify an instance that you do not own, it is not included in the
    # returned results.
    #
    # Recently terminated instances might appear in the returned results.
    # This interval is usually less than one hour.
    #
    # If you describe instances in the rare case where an Availability Zone
    # is experiencing a service disruption and you specify instance IDs that
    # are in the affected zone, or do not specify any instance IDs at all,
    # the call fails. If you describe instances and specify only instance
    # IDs that are in an unaffected zone, the call works normally.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `affinity` - The affinity setting for an instance running on a
    #     Dedicated Host (`default` \| `host`).
    #
    #   * `architecture` - The instance architecture (`i386` \| `x86_64`).
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `block-device-mapping.attach-time` - The attach time for an EBS
    #     volume mapped to the instance, for example,
    #     `2010-09-15T17:15:20.000Z`.
    #
    #   * `block-device-mapping.delete-on-termination` - A Boolean that
    #     indicates whether the EBS volume is deleted on instance termination.
    #
    #   * `block-device-mapping.device-name` - The device name for the EBS
    #     volume (for example, `/dev/sdh` or `xvdh`).
    #
    #   * `block-device-mapping.status` - The status for the EBS volume
    #     (`attaching` \| `attached` \| `detaching` \| `detached`).
    #
    #   * `block-device-mapping.volume-id` - The volume ID of the EBS volume.
    #
    #   * `client-token` - The idempotency token you provided when you
    #     launched the instance.
    #
    #   * `dns-name` - The public DNS name of the instance.
    #
    #   * `group-id` - The ID of the security group for the instance.
    #     EC2-Classic only.
    #
    #   * `group-name` - The name of the security group for the instance.
    #     EC2-Classic only.
    #
    #   * `host-id` - The ID of the Dedicated Host on which the instance is
    #     running, if applicable.
    #
    #   * `hypervisor` - The hypervisor type of the instance (`ovm` \| `xen`).
    #
    #   * `iam-instance-profile.arn` - The instance profile associated with
    #     the instance. Specified as an ARN.
    #
    #   * `image-id` - The ID of the image used to launch the instance.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `instance-lifecycle` - Indicates whether this is a Spot Instance or
    #     a Scheduled Instance (`spot` \| `scheduled`).
    #
    #   * `instance-state-code` - The state of the instance, as a 16-bit
    #     unsigned integer. The high byte is an opaque internal value and
    #     should be ignored. The low byte is set based on the state
    #     represented. The valid values are: 0 (pending), 16 (running), 32
    #     (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
    #
    #   * `instance-state-name` - The state of the instance (`pending` \|
    #     `running` \| `shutting-down` \| `terminated` \| `stopping` \|
    #     `stopped`).
    #
    #   * `instance-type` - The type of instance (for example, `t2.micro`).
    #
    #   * `instance.group-id` - The ID of the security group for the instance.
    #
    #   * `instance.group-name` - The name of the security group for the
    #     instance.
    #
    #   * `ip-address` - The public IPv4 address of the instance.
    #
    #   * `kernel-id` - The kernel ID.
    #
    #   * `key-name` - The name of the key pair used when the instance was
    #     launched.
    #
    #   * `launch-index` - When launching multiple instances, this is the
    #     index for the instance in the launch group (for example, 0, 1, 2,
    #     and so on).
    #
    #   * `launch-time` - The time when the instance was launched.
    #
    #   * `monitoring-state` - Indicates whether detailed monitoring is
    #     enabled (`disabled` \| `enabled`).
    #
    #   * `network-interface.addresses.private-ip-address` - The private IPv4
    #     address associated with the network interface.
    #
    #   * `network-interface.addresses.primary` - Specifies whether the IPv4
    #     address of the network interface is the primary private IPv4
    #     address.
    #
    #   * `network-interface.addresses.association.public-ip` - The ID of the
    #     association of an Elastic IP address (IPv4) with a network
    #     interface.
    #
    #   * `network-interface.addresses.association.ip-owner-id` - The owner ID
    #     of the private IPv4 address associated with the network interface.
    #
    #   * `network-interface.association.public-ip` - The address of the
    #     Elastic IP address (IPv4) bound to the network interface.
    #
    #   * `network-interface.association.ip-owner-id` - The owner of the
    #     Elastic IP address (IPv4) associated with the network interface.
    #
    #   * `network-interface.association.allocation-id` - The allocation ID
    #     returned when you allocated the Elastic IP address (IPv4) for your
    #     network interface.
    #
    #   * `network-interface.association.association-id` - The association ID
    #     returned when the network interface was associated with an IPv4
    #     address.
    #
    #   * `network-interface.attachment.attachment-id` - The ID of the
    #     interface attachment.
    #
    #   * `network-interface.attachment.instance-id` - The ID of the instance
    #     to which the network interface is attached.
    #
    #   * `network-interface.attachment.instance-owner-id` - The owner ID of
    #     the instance to which the network interface is attached.
    #
    #   * `network-interface.attachment.device-index` - The device index to
    #     which the network interface is attached.
    #
    #   * `network-interface.attachment.status` - The status of the attachment
    #     (`attaching` \| `attached` \| `detaching` \| `detached`).
    #
    #   * `network-interface.attachment.attach-time` - The time that the
    #     network interface was attached to an instance.
    #
    #   * `network-interface.attachment.delete-on-termination` - Specifies
    #     whether the attachment is deleted when an instance is terminated.
    #
    #   * `network-interface.availability-zone` - The Availability Zone for
    #     the network interface.
    #
    #   * `network-interface.description` - The description of the network
    #     interface.
    #
    #   * `network-interface.group-id` - The ID of a security group associated
    #     with the network interface.
    #
    #   * `network-interface.group-name` - The name of a security group
    #     associated with the network interface.
    #
    #   * `network-interface.ipv6-addresses.ipv6-address` - The IPv6 address
    #     associated with the network interface.
    #
    #   * `network-interface.mac-address` - The MAC address of the network
    #     interface.
    #
    #   * `network-interface.network-interface-id` - The ID of the network
    #     interface.
    #
    #   * `network-interface.owner-id` - The ID of the owner of the network
    #     interface.
    #
    #   * `network-interface.private-dns-name` - The private DNS name of the
    #     network interface.
    #
    #   * `network-interface.requester-id` - The requester ID for the network
    #     interface.
    #
    #   * `network-interface.requester-managed` - Indicates whether the
    #     network interface is being managed by AWS.
    #
    #   * `network-interface.status` - The status of the network interface
    #     (`available`) \| `in-use`).
    #
    #   * `network-interface.source-dest-check` - Whether the network
    #     interface performs source/destination checking. A value of `true`
    #     means checking is enabled, and `false` means checking is disabled.
    #     The value must be `false` for the network interface to perform
    #     network address translation (NAT) in your VPC.
    #
    #   * `network-interface.subnet-id` - The ID of the subnet for the network
    #     interface.
    #
    #   * `network-interface.vpc-id` - The ID of the VPC for the network
    #     interface.
    #
    #   * `owner-id` - The AWS account ID of the instance owner.
    #
    #   * `placement-group-name` - The name of the placement group for the
    #     instance.
    #
    #   * `platform` - The platform. Use `windows` if you have Windows
    #     instances; otherwise, leave blank.
    #
    #   * `private-dns-name` - The private IPv4 DNS name of the instance.
    #
    #   * `private-ip-address` - The private IPv4 address of the instance.
    #
    #   * `product-code` - The product code associated with the AMI used to
    #     launch the instance.
    #
    #   * `product-code.type` - The type of product code (`devpay` \|
    #     `marketplace`).
    #
    #   * `ramdisk-id` - The RAM disk ID.
    #
    #   * `reason` - The reason for the current state of the instance (for
    #     example, shows "User Initiated \[date\]" when you stop or
    #     terminate the instance). Similar to the state-reason-code filter.
    #
    #   * `requester-id` - The ID of the entity that launched the instance on
    #     your behalf (for example, AWS Management Console, Auto Scaling, and
    #     so on).
    #
    #   * `reservation-id` - The ID of the instance's reservation. A
    #     reservation ID is created any time you launch an instance. A
    #     reservation ID has a one-to-one relationship with an instance launch
    #     request, but can be associated with more than one instance if you
    #     launch multiple instances using the same launch request. For
    #     example, if you launch one instance, you'll get one reservation ID.
    #     If you launch ten instances using the same launch request, you'll
    #     also get one reservation ID.
    #
    #   * `root-device-name` - The name of the root device for the instance
    #     (for example, `/dev/sda1` or `/dev/xvda`).
    #
    #   * `root-device-type` - The type of root device that the instance uses
    #     (`ebs` \| `instance-store`).
    #
    #   * `source-dest-check` - Indicates whether the instance performs
    #     source/destination checking. A value of `true` means that checking
    #     is enabled, and `false` means checking is disabled. The value must
    #     be `false` for the instance to perform network address translation
    #     (NAT) in your VPC.
    #
    #   * `spot-instance-request-id` - The ID of the Spot instance request.
    #
    #   * `state-reason-code` - The reason code for the state change.
    #
    #   * `state-reason-message` - A message that describes the state change.
    #
    #   * `subnet-id` - The ID of the subnet for the instance.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `tenancy` - The tenancy of an instance (`dedicated` \| `default` \|
    #     `host`).
    #
    #   * `virtualization-type` - The virtualization type of the instance
    #     (`paravirtual` \| `hvm`).
    #
    #   * `vpc-id` - The ID of the VPC that the instance is running in.
    #
    # @option params [Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    #   Default: Describes all your instances.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value. This value can be between 5 and 1000. You cannot specify this
    #   parameter and the instance IDs parameter or tag filters in the same
    #   call.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::DescribeInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancesResult#reservations #reservations} => Array&lt;Types::Reservation&gt;
    #   * {Types::DescribeInstancesResult#next_token #next_token} => String
    #
    # @example Filtering by tags examples
    #   # filtering by tag keys "key1" or "key2"
    #   ec2.describe_instances(filters:[{ name: 'tag-key', values: ['key1', 'key2'] }])
    #
    #   # filtering by tag values "value1" or "value1"
    #   ec2.describe_instances(filters:[{ name: 'tag-value', values: ['value1', 'value2'] }])
    #
    #   # filtering by key and value, key equals "key1" and value equals "value1" or "value2"
    #   ec2.describe_instances(filters:[{ name: "tag:key1", values: ['value1'] }])
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     instance_ids: ["String"],
    #     dry_run: false,
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.reservations #=> Array
    #   resp.reservations[0].groups #=> Array
    #   resp.reservations[0].groups[0].group_name #=> String
    #   resp.reservations[0].groups[0].group_id #=> String
    #   resp.reservations[0].instances #=> Array
    #   resp.reservations[0].instances[0].ami_launch_index #=> Integer
    #   resp.reservations[0].instances[0].image_id #=> String
    #   resp.reservations[0].instances[0].instance_id #=> String
    #   resp.reservations[0].instances[0].instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.reservations[0].instances[0].kernel_id #=> String
    #   resp.reservations[0].instances[0].key_name #=> String
    #   resp.reservations[0].instances[0].launch_time #=> Time
    #   resp.reservations[0].instances[0].monitoring.state #=> String, one of "disabled", "disabling", "enabled", "pending"
    #   resp.reservations[0].instances[0].placement.availability_zone #=> String
    #   resp.reservations[0].instances[0].placement.affinity #=> String
    #   resp.reservations[0].instances[0].placement.group_name #=> String
    #   resp.reservations[0].instances[0].placement.host_id #=> String
    #   resp.reservations[0].instances[0].placement.tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.reservations[0].instances[0].placement.spread_domain #=> String
    #   resp.reservations[0].instances[0].platform #=> String, one of "Windows"
    #   resp.reservations[0].instances[0].private_dns_name #=> String
    #   resp.reservations[0].instances[0].private_ip_address #=> String
    #   resp.reservations[0].instances[0].product_codes #=> Array
    #   resp.reservations[0].instances[0].product_codes[0].product_code_id #=> String
    #   resp.reservations[0].instances[0].product_codes[0].product_code_type #=> String, one of "devpay", "marketplace"
    #   resp.reservations[0].instances[0].public_dns_name #=> String
    #   resp.reservations[0].instances[0].public_ip_address #=> String
    #   resp.reservations[0].instances[0].ramdisk_id #=> String
    #   resp.reservations[0].instances[0].state.code #=> Integer
    #   resp.reservations[0].instances[0].state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #   resp.reservations[0].instances[0].state_transition_reason #=> String
    #   resp.reservations[0].instances[0].subnet_id #=> String
    #   resp.reservations[0].instances[0].vpc_id #=> String
    #   resp.reservations[0].instances[0].architecture #=> String, one of "i386", "x86_64"
    #   resp.reservations[0].instances[0].block_device_mappings #=> Array
    #   resp.reservations[0].instances[0].block_device_mappings[0].device_name #=> String
    #   resp.reservations[0].instances[0].block_device_mappings[0].ebs.attach_time #=> Time
    #   resp.reservations[0].instances[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.reservations[0].instances[0].block_device_mappings[0].ebs.status #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.reservations[0].instances[0].block_device_mappings[0].ebs.volume_id #=> String
    #   resp.reservations[0].instances[0].client_token #=> String
    #   resp.reservations[0].instances[0].ebs_optimized #=> Boolean
    #   resp.reservations[0].instances[0].ena_support #=> Boolean
    #   resp.reservations[0].instances[0].hypervisor #=> String, one of "ovm", "xen"
    #   resp.reservations[0].instances[0].iam_instance_profile.arn #=> String
    #   resp.reservations[0].instances[0].iam_instance_profile.id #=> String
    #   resp.reservations[0].instances[0].instance_lifecycle #=> String, one of "spot", "scheduled"
    #   resp.reservations[0].instances[0].elastic_gpu_associations #=> Array
    #   resp.reservations[0].instances[0].elastic_gpu_associations[0].elastic_gpu_id #=> String
    #   resp.reservations[0].instances[0].elastic_gpu_associations[0].elastic_gpu_association_id #=> String
    #   resp.reservations[0].instances[0].elastic_gpu_associations[0].elastic_gpu_association_state #=> String
    #   resp.reservations[0].instances[0].elastic_gpu_associations[0].elastic_gpu_association_time #=> String
    #   resp.reservations[0].instances[0].network_interfaces #=> Array
    #   resp.reservations[0].instances[0].network_interfaces[0].association.ip_owner_id #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].association.public_dns_name #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].association.public_ip #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].attachment.attach_time #=> Time
    #   resp.reservations[0].instances[0].network_interfaces[0].attachment.attachment_id #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].attachment.delete_on_termination #=> Boolean
    #   resp.reservations[0].instances[0].network_interfaces[0].attachment.device_index #=> Integer
    #   resp.reservations[0].instances[0].network_interfaces[0].attachment.status #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.reservations[0].instances[0].network_interfaces[0].description #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].groups #=> Array
    #   resp.reservations[0].instances[0].network_interfaces[0].groups[0].group_name #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].groups[0].group_id #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].ipv_6_addresses #=> Array
    #   resp.reservations[0].instances[0].network_interfaces[0].ipv_6_addresses[0].ipv_6_address #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].mac_address #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].network_interface_id #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].owner_id #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].private_dns_name #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].private_ip_address #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].private_ip_addresses #=> Array
    #   resp.reservations[0].instances[0].network_interfaces[0].private_ip_addresses[0].association.ip_owner_id #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].private_ip_addresses[0].association.public_dns_name #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].private_ip_addresses[0].association.public_ip #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].private_ip_addresses[0].primary #=> Boolean
    #   resp.reservations[0].instances[0].network_interfaces[0].private_ip_addresses[0].private_dns_name #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].source_dest_check #=> Boolean
    #   resp.reservations[0].instances[0].network_interfaces[0].status #=> String, one of "available", "attaching", "in-use", "detaching"
    #   resp.reservations[0].instances[0].network_interfaces[0].subnet_id #=> String
    #   resp.reservations[0].instances[0].network_interfaces[0].vpc_id #=> String
    #   resp.reservations[0].instances[0].root_device_name #=> String
    #   resp.reservations[0].instances[0].root_device_type #=> String, one of "ebs", "instance-store"
    #   resp.reservations[0].instances[0].security_groups #=> Array
    #   resp.reservations[0].instances[0].security_groups[0].group_name #=> String
    #   resp.reservations[0].instances[0].security_groups[0].group_id #=> String
    #   resp.reservations[0].instances[0].source_dest_check #=> Boolean
    #   resp.reservations[0].instances[0].spot_instance_request_id #=> String
    #   resp.reservations[0].instances[0].sriov_net_support #=> String
    #   resp.reservations[0].instances[0].state_reason.code #=> String
    #   resp.reservations[0].instances[0].state_reason.message #=> String
    #   resp.reservations[0].instances[0].tags #=> Array
    #   resp.reservations[0].instances[0].tags[0].key #=> String
    #   resp.reservations[0].instances[0].tags[0].value #=> String
    #   resp.reservations[0].instances[0].virtualization_type #=> String, one of "hvm", "paravirtual"
    #   resp.reservations[0].owner_id #=> String
    #   resp.reservations[0].requester_id #=> String
    #   resp.reservations[0].reservation_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstances AWS API Documentation
    #
    # @overload describe_instances(params = {})
    # @param [Hash] params ({})
    def describe_instances(params = {}, options = {})
      req = build_request(:describe_instances, params)
      req.send_request(options)
    end

    # Describes one or more of your Internet gateways.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `attachment.state` - The current state of the attachment between the
    #     gateway and the VPC (`available`). Present only if a VPC is
    #     attached.
    #
    #   * `attachment.vpc-id` - The ID of an attached VPC.
    #
    #   * `internet-gateway-id` - The ID of the Internet gateway.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :internet_gateway_ids
    #   One or more Internet gateway IDs.
    #
    #   Default: Describes all your Internet gateways.
    #
    # @return [Types::DescribeInternetGatewaysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInternetGatewaysResult#internet_gateways #internet_gateways} => Array&lt;Types::InternetGateway&gt;
    #
    #
    # @example Example: To describe the Internet gateway for a VPC
    #
    #   # This example describes the Internet gateway for the specified VPC.
    #
    #   resp = client.describe_internet_gateways({
    #     filters: [
    #       {
    #         name: "attachment.vpc-id", 
    #         values: [
    #           "vpc-a01106c2", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     internet_gateways: [
    #       {
    #         attachments: [
    #           {
    #             state: "available", 
    #             vpc_id: "vpc-a01106c2", 
    #           }, 
    #         ], 
    #         internet_gateway_id: "igw-c0a643a9", 
    #         tags: [
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_internet_gateways({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     internet_gateway_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.internet_gateways #=> Array
    #   resp.internet_gateways[0].attachments #=> Array
    #   resp.internet_gateways[0].attachments[0].state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.internet_gateways[0].attachments[0].vpc_id #=> String
    #   resp.internet_gateways[0].internet_gateway_id #=> String
    #   resp.internet_gateways[0].tags #=> Array
    #   resp.internet_gateways[0].tags[0].key #=> String
    #   resp.internet_gateways[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInternetGateways AWS API Documentation
    #
    # @overload describe_internet_gateways(params = {})
    # @param [Hash] params ({})
    def describe_internet_gateways(params = {}, options = {})
      req = build_request(:describe_internet_gateways, params)
      req.send_request(options)
    end

    # Describes one or more of your key pairs.
    #
    # For more information about key pairs, see [Key Pairs][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `fingerprint` - The fingerprint of the key pair.
    #
    #   * `key-name` - The name of the key pair.
    #
    # @option params [Array<String>] :key_names
    #   One or more key pair names.
    #
    #   Default: Describes all your key pairs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeKeyPairsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyPairsResult#key_pairs #key_pairs} => Array&lt;Types::KeyPairInfo&gt;
    #
    #
    # @example Example: To display a key pair
    #
    #   # This example displays the fingerprint for the specified key.
    #
    #   resp = client.describe_key_pairs({
    #     key_names: [
    #       "my-key-pair", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     key_pairs: [
    #       {
    #         key_fingerprint: "1f:51:ae:28:bf:89:e9:d8:1f:25:5d:37:2d:7d:b8:ca:9f:f5:f1:6f", 
    #         key_name: "my-key-pair", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key_pairs({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     key_names: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_pairs #=> Array
    #   resp.key_pairs[0].key_fingerprint #=> String
    #   resp.key_pairs[0].key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeKeyPairs AWS API Documentation
    #
    # @overload describe_key_pairs(params = {})
    # @param [Hash] params ({})
    def describe_key_pairs(params = {}, options = {})
      req = build_request(:describe_key_pairs, params)
      req.send_request(options)
    end

    # Describes your Elastic IP addresses that are being moved to the
    # EC2-VPC platform, or that are being restored to the EC2-Classic
    # platform. This request does not return information about any other
    # Elastic IP addresses in your account.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `moving-status` - The status of the Elastic IP address
    #     (`MovingToVpc` \| `RestoringToClassic`).
    #
    #   ^
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results of the initial request can be seen by
    #   sending another request with the returned `NextToken` value. This
    #   value can be between 5 and 1000; if `MaxResults` is given a value
    #   outside of this range, an error is returned.
    #
    #   Default: If no value is provided, the default is 1000.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Array<String>] :public_ips
    #   One or more Elastic IP addresses.
    #
    # @return [Types::DescribeMovingAddressesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMovingAddressesResult#moving_address_statuses #moving_address_statuses} => Array&lt;Types::MovingAddressStatus&gt;
    #   * {Types::DescribeMovingAddressesResult#next_token #next_token} => String
    #
    #
    # @example Example: To describe your moving addresses
    #
    #   # This example describes all of your moving Elastic IP addresses.
    #
    #   resp = client.describe_moving_addresses({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     moving_address_statuses: [
    #       {
    #         move_status: "MovingToVpc", 
    #         public_ip: "198.51.100.0", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_moving_addresses({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     max_results: 1,
    #     next_token: "String",
    #     public_ips: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.moving_address_statuses #=> Array
    #   resp.moving_address_statuses[0].move_status #=> String, one of "movingToVpc", "restoringToClassic"
    #   resp.moving_address_statuses[0].public_ip #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeMovingAddresses AWS API Documentation
    #
    # @overload describe_moving_addresses(params = {})
    # @param [Hash] params ({})
    def describe_moving_addresses(params = {}, options = {})
      req = build_request(:describe_moving_addresses, params)
      req.send_request(options)
    end

    # Describes one or more of the your NAT gateways.
    #
    # @option params [Array<Types::Filter>] :filter
    #   One or more filters.
    #
    #   * `nat-gateway-id` - The ID of the NAT gateway.
    #
    #   * `state` - The state of the NAT gateway (`pending` \| `failed` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `subnet-id` - The ID of the subnet in which the NAT gateway resides.
    #
    #   * `vpc-id` - The ID of the VPC in which the NAT gateway resides.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    #   Constraint: If the value specified is greater than 1000, we return
    #   only 1000 items.
    #
    # @option params [Array<String>] :nat_gateway_ids
    #   One or more NAT gateway IDs.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @return [Types::DescribeNatGatewaysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNatGatewaysResult#nat_gateways #nat_gateways} => Array&lt;Types::NatGateway&gt;
    #   * {Types::DescribeNatGatewaysResult#next_token #next_token} => String
    #
    #
    # @example Example: To describe a NAT gateway
    #
    #   # This example describes the NAT gateway for the specified VPC.
    #
    #   resp = client.describe_nat_gateways({
    #     filter: [
    #       {
    #         name: "vpc-id", 
    #         values: [
    #           "vpc-1a2b3c4d", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     nat_gateways: [
    #       {
    #         create_time: Time.parse("2015-12-01T12:26:55.983Z"), 
    #         nat_gateway_addresses: [
    #           {
    #             allocation_id: "eipalloc-89c620ec", 
    #             network_interface_id: "eni-9dec76cd", 
    #             private_ip: "10.0.0.149", 
    #             public_ip: "198.11.222.333", 
    #           }, 
    #         ], 
    #         nat_gateway_id: "nat-05dba92075d71c408", 
    #         state: "available", 
    #         subnet_id: "subnet-847e4dc2", 
    #         vpc_id: "vpc-1a2b3c4d", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_nat_gateways({
    #     filter: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     nat_gateway_ids: ["String"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.nat_gateways #=> Array
    #   resp.nat_gateways[0].create_time #=> Time
    #   resp.nat_gateways[0].delete_time #=> Time
    #   resp.nat_gateways[0].failure_code #=> String
    #   resp.nat_gateways[0].failure_message #=> String
    #   resp.nat_gateways[0].nat_gateway_addresses #=> Array
    #   resp.nat_gateways[0].nat_gateway_addresses[0].allocation_id #=> String
    #   resp.nat_gateways[0].nat_gateway_addresses[0].network_interface_id #=> String
    #   resp.nat_gateways[0].nat_gateway_addresses[0].private_ip #=> String
    #   resp.nat_gateways[0].nat_gateway_addresses[0].public_ip #=> String
    #   resp.nat_gateways[0].nat_gateway_id #=> String
    #   resp.nat_gateways[0].provisioned_bandwidth.provision_time #=> Time
    #   resp.nat_gateways[0].provisioned_bandwidth.provisioned #=> String
    #   resp.nat_gateways[0].provisioned_bandwidth.request_time #=> Time
    #   resp.nat_gateways[0].provisioned_bandwidth.requested #=> String
    #   resp.nat_gateways[0].provisioned_bandwidth.status #=> String
    #   resp.nat_gateways[0].state #=> String, one of "pending", "failed", "available", "deleting", "deleted"
    #   resp.nat_gateways[0].subnet_id #=> String
    #   resp.nat_gateways[0].vpc_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNatGateways AWS API Documentation
    #
    # @overload describe_nat_gateways(params = {})
    # @param [Hash] params ({})
    def describe_nat_gateways(params = {}, options = {})
      req = build_request(:describe_nat_gateways, params)
      req.send_request(options)
    end

    # Describes one or more of your network ACLs.
    #
    # For more information about network ACLs, see [Network ACLs][1] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `association.association-id` - The ID of an association ID for the
    #     ACL.
    #
    #   * `association.network-acl-id` - The ID of the network ACL involved in
    #     the association.
    #
    #   * `association.subnet-id` - The ID of the subnet involved in the
    #     association.
    #
    #   * `default` - Indicates whether the ACL is the default network ACL for
    #     the VPC.
    #
    #   * `entry.cidr` - The IPv4 CIDR range specified in the entry.
    #
    #   * `entry.egress` - Indicates whether the entry applies to egress
    #     traffic.
    #
    #   * `entry.icmp.code` - The ICMP code specified in the entry, if any.
    #
    #   * `entry.icmp.type` - The ICMP type specified in the entry, if any.
    #
    #   * `entry.ipv6-cidr` - The IPv6 CIDR range specified in the entry.
    #
    #   * `entry.port-range.from` - The start of the port range specified in
    #     the entry.
    #
    #   * `entry.port-range.to` - The end of the port range specified in the
    #     entry.
    #
    #   * `entry.protocol` - The protocol specified in the entry (`tcp` \|
    #     `udp` \| `icmp` or a protocol number).
    #
    #   * `entry.rule-action` - Allows or denies the matching traffic (`allow`
    #     \| `deny`).
    #
    #   * `entry.rule-number` - The number of an entry (in other words, rule)
    #     in the ACL's set of entries.
    #
    #   * `network-acl-id` - The ID of the network ACL.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC for the network ACL.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :network_acl_ids
    #   One or more network ACL IDs.
    #
    #   Default: Describes all your network ACLs.
    #
    # @return [Types::DescribeNetworkAclsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNetworkAclsResult#network_acls #network_acls} => Array&lt;Types::NetworkAcl&gt;
    #
    #
    # @example Example: To describe a network ACL
    #
    #   # This example describes the specified network ACL.
    #
    #   resp = client.describe_network_acls({
    #     network_acl_ids: [
    #       "acl-5fb85d36", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     network_acls: [
    #       {
    #         associations: [
    #           {
    #             network_acl_association_id: "aclassoc-66ea5f0b", 
    #             network_acl_id: "acl-9aeb5ef7", 
    #             subnet_id: "subnet-65ea5f08", 
    #           }, 
    #         ], 
    #         entries: [
    #           {
    #             cidr_block: "0.0.0.0/0", 
    #             egress: true, 
    #             protocol: "-1", 
    #             rule_action: "deny", 
    #             rule_number: 32767, 
    #           }, 
    #           {
    #             cidr_block: "0.0.0.0/0", 
    #             egress: false, 
    #             protocol: "-1", 
    #             rule_action: "deny", 
    #             rule_number: 32767, 
    #           }, 
    #         ], 
    #         is_default: false, 
    #         network_acl_id: "acl-5fb85d36", 
    #         tags: [
    #         ], 
    #         vpc_id: "vpc-a01106c2", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_network_acls({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     network_acl_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.network_acls #=> Array
    #   resp.network_acls[0].associations #=> Array
    #   resp.network_acls[0].associations[0].network_acl_association_id #=> String
    #   resp.network_acls[0].associations[0].network_acl_id #=> String
    #   resp.network_acls[0].associations[0].subnet_id #=> String
    #   resp.network_acls[0].entries #=> Array
    #   resp.network_acls[0].entries[0].cidr_block #=> String
    #   resp.network_acls[0].entries[0].egress #=> Boolean
    #   resp.network_acls[0].entries[0].icmp_type_code.code #=> Integer
    #   resp.network_acls[0].entries[0].icmp_type_code.type #=> Integer
    #   resp.network_acls[0].entries[0].ipv_6_cidr_block #=> String
    #   resp.network_acls[0].entries[0].port_range.from #=> Integer
    #   resp.network_acls[0].entries[0].port_range.to #=> Integer
    #   resp.network_acls[0].entries[0].protocol #=> String
    #   resp.network_acls[0].entries[0].rule_action #=> String, one of "allow", "deny"
    #   resp.network_acls[0].entries[0].rule_number #=> Integer
    #   resp.network_acls[0].is_default #=> Boolean
    #   resp.network_acls[0].network_acl_id #=> String
    #   resp.network_acls[0].tags #=> Array
    #   resp.network_acls[0].tags[0].key #=> String
    #   resp.network_acls[0].tags[0].value #=> String
    #   resp.network_acls[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkAcls AWS API Documentation
    #
    # @overload describe_network_acls(params = {})
    # @param [Hash] params ({})
    def describe_network_acls(params = {}, options = {})
      req = build_request(:describe_network_acls, params)
      req.send_request(options)
    end

    # Describes a network interface attribute. You can specify only one
    # attribute at a time.
    #
    # @option params [String] :attribute
    #   The attribute of the network interface. This parameter is required.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @return [Types::DescribeNetworkInterfaceAttributeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNetworkInterfaceAttributeResult#attachment #attachment} => Types::NetworkInterfaceAttachment
    #   * {Types::DescribeNetworkInterfaceAttributeResult#description #description} => Types::AttributeValue
    #   * {Types::DescribeNetworkInterfaceAttributeResult#groups #groups} => Array&lt;Types::GroupIdentifier&gt;
    #   * {Types::DescribeNetworkInterfaceAttributeResult#network_interface_id #network_interface_id} => String
    #   * {Types::DescribeNetworkInterfaceAttributeResult#source_dest_check #source_dest_check} => Types::AttributeBooleanValue
    #
    #
    # @example Example: To describe the attachment attribute of a network interface
    #
    #   # This example describes the attachment attribute of the specified network interface.
    #
    #   resp = client.describe_network_interface_attribute({
    #     attribute: "attachment", 
    #     network_interface_id: "eni-686ea200", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attachment: {
    #       attach_time: Time.parse("2015-05-21T20:02:20.000Z"), 
    #       attachment_id: "eni-attach-43348162", 
    #       delete_on_termination: true, 
    #       device_index: 0, 
    #       instance_id: "i-1234567890abcdef0", 
    #       instance_owner_id: "123456789012", 
    #       status: "attached", 
    #     }, 
    #     network_interface_id: "eni-686ea200", 
    #   }
    #
    # @example Example: To describe the description attribute of a network interface
    #
    #   # This example describes the description attribute of the specified network interface.
    #
    #   resp = client.describe_network_interface_attribute({
    #     attribute: "description", 
    #     network_interface_id: "eni-686ea200", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     description: {
    #       value: "My description", 
    #     }, 
    #     network_interface_id: "eni-686ea200", 
    #   }
    #
    # @example Example: To describe the groupSet attribute of a network interface
    #
    #   # This example describes the groupSet attribute of the specified network interface.
    #
    #   resp = client.describe_network_interface_attribute({
    #     attribute: "groupSet", 
    #     network_interface_id: "eni-686ea200", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     groups: [
    #       {
    #         group_id: "sg-903004f8", 
    #         group_name: "my-security-group", 
    #       }, 
    #     ], 
    #     network_interface_id: "eni-686ea200", 
    #   }
    #
    # @example Example: To describe the sourceDestCheck attribute of a network interface
    #
    #   # This example describes the sourceDestCheck attribute of the specified network interface.
    #
    #   resp = client.describe_network_interface_attribute({
    #     attribute: "sourceDestCheck", 
    #     network_interface_id: "eni-686ea200", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     network_interface_id: "eni-686ea200", 
    #     source_dest_check: {
    #       value: true, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_network_interface_attribute({
    #     attribute: "description", # accepts description, groupSet, sourceDestCheck, attachment
    #     dry_run: false,
    #     network_interface_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attachment.attach_time #=> Time
    #   resp.attachment.attachment_id #=> String
    #   resp.attachment.delete_on_termination #=> Boolean
    #   resp.attachment.device_index #=> Integer
    #   resp.attachment.instance_id #=> String
    #   resp.attachment.instance_owner_id #=> String
    #   resp.attachment.status #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.description #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].group_id #=> String
    #   resp.network_interface_id #=> String
    #   resp.source_dest_check.value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfaceAttribute AWS API Documentation
    #
    # @overload describe_network_interface_attribute(params = {})
    # @param [Hash] params ({})
    def describe_network_interface_attribute(params = {}, options = {})
      req = build_request(:describe_network_interface_attribute, params)
      req.send_request(options)
    end

    # Describes the permissions for your network interfaces.
    #
    # @option params [Array<String>] :network_interface_permission_ids
    #   One or more network interface permission IDs.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `network-interface-permission.network-interface-permission-id` - The
    #     ID of the permission.
    #
    #   * `network-interface-permission.network-interface-id` - The ID of the
    #     network interface.
    #
    #   * `network-interface-permission.aws-account-id` - The AWS account ID.
    #
    #   * `network-interface-permission.aws-service` - The AWS service.
    #
    #   * `network-interface-permission.permission` - The type of permission
    #     (`INSTANCE-ATTACH` \| `EIP-ASSOCIATE`).
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value. If this parameter is not specified, up to 50 results are
    #   returned by default.
    #
    # @return [Types::DescribeNetworkInterfacePermissionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNetworkInterfacePermissionsResult#network_interface_permissions #network_interface_permissions} => Array&lt;Types::NetworkInterfacePermission&gt;
    #   * {Types::DescribeNetworkInterfacePermissionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_network_interface_permissions({
    #     network_interface_permission_ids: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.network_interface_permissions #=> Array
    #   resp.network_interface_permissions[0].network_interface_permission_id #=> String
    #   resp.network_interface_permissions[0].network_interface_id #=> String
    #   resp.network_interface_permissions[0].aws_account_id #=> String
    #   resp.network_interface_permissions[0].aws_service #=> String
    #   resp.network_interface_permissions[0].permission #=> String, one of "INSTANCE-ATTACH", "EIP-ASSOCIATE"
    #   resp.network_interface_permissions[0].permission_state.state #=> String, one of "pending", "granted", "revoking", "revoked"
    #   resp.network_interface_permissions[0].permission_state.status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfacePermissions AWS API Documentation
    #
    # @overload describe_network_interface_permissions(params = {})
    # @param [Hash] params ({})
    def describe_network_interface_permissions(params = {}, options = {})
      req = build_request(:describe_network_interface_permissions, params)
      req.send_request(options)
    end

    # Describes one or more of your network interfaces.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `addresses.private-ip-address` - The private IPv4 addresses
    #     associated with the network interface.
    #
    #   * `addresses.primary` - Whether the private IPv4 address is the
    #     primary IP address associated with the network interface.
    #
    #   * `addresses.association.public-ip` - The association ID returned when
    #     the network interface was associated with the Elastic IP address
    #     (IPv4).
    #
    #   * `addresses.association.owner-id` - The owner ID of the addresses
    #     associated with the network interface.
    #
    #   * `association.association-id` - The association ID returned when the
    #     network interface was associated with an IPv4 address.
    #
    #   * `association.allocation-id` - The allocation ID returned when you
    #     allocated the Elastic IP address (IPv4) for your network interface.
    #
    #   * `association.ip-owner-id` - The owner of the Elastic IP address
    #     (IPv4) associated with the network interface.
    #
    #   * `association.public-ip` - The address of the Elastic IP address
    #     (IPv4) bound to the network interface.
    #
    #   * `association.public-dns-name` - The public DNS name for the network
    #     interface (IPv4).
    #
    #   * `attachment.attachment-id` - The ID of the interface attachment.
    #
    #   * `attachment.attach.time` - The time that the network interface was
    #     attached to an instance.
    #
    #   * `attachment.delete-on-termination` - Indicates whether the
    #     attachment is deleted when an instance is terminated.
    #
    #   * `attachment.device-index` - The device index to which the network
    #     interface is attached.
    #
    #   * `attachment.instance-id` - The ID of the instance to which the
    #     network interface is attached.
    #
    #   * `attachment.instance-owner-id` - The owner ID of the instance to
    #     which the network interface is attached.
    #
    #   * `attachment.nat-gateway-id` - The ID of the NAT gateway to which the
    #     network interface is attached.
    #
    #   * `attachment.status` - The status of the attachment (`attaching` \|
    #     `attached` \| `detaching` \| `detached`).
    #
    #   * `availability-zone` - The Availability Zone of the network
    #     interface.
    #
    #   * `description` - The description of the network interface.
    #
    #   * `group-id` - The ID of a security group associated with the network
    #     interface.
    #
    #   * `group-name` - The name of a security group associated with the
    #     network interface.
    #
    #   * `ipv6-addresses.ipv6-address` - An IPv6 address associated with the
    #     network interface.
    #
    #   * `mac-address` - The MAC address of the network interface.
    #
    #   * `network-interface-id` - The ID of the network interface.
    #
    #   * `owner-id` - The AWS account ID of the network interface owner.
    #
    #   * `private-ip-address` - The private IPv4 address or addresses of the
    #     network interface.
    #
    #   * `private-dns-name` - The private DNS name of the network interface
    #     (IPv4).
    #
    #   * `requester-id` - The ID of the entity that launched the instance on
    #     your behalf (for example, AWS Management Console, Auto Scaling, and
    #     so on).
    #
    #   * `requester-managed` - Indicates whether the network interface is
    #     being managed by an AWS service (for example, AWS Management
    #     Console, Auto Scaling, and so on).
    #
    #   * `source-desk-check` - Indicates whether the network interface
    #     performs source/destination checking. A value of `true` means
    #     checking is enabled, and `false` means checking is disabled. The
    #     value must be `false` for the network interface to perform network
    #     address translation (NAT) in your VPC.
    #
    #   * `status` - The status of the network interface. If the network
    #     interface is not attached to an instance, the status is `available`;
    #     if a network interface is attached to an instance the status is
    #     `in-use`.
    #
    #   * `subnet-id` - The ID of the subnet for the network interface.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC for the network interface.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :network_interface_ids
    #   One or more network interface IDs.
    #
    #   Default: Describes all your network interfaces.
    #
    # @return [Types::DescribeNetworkInterfacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNetworkInterfacesResult#network_interfaces #network_interfaces} => Array&lt;Types::NetworkInterface&gt;
    #
    #
    # @example Example: To describe a network interface
    #
    #   # 
    #
    #   resp = client.describe_network_interfaces({
    #     network_interface_ids: [
    #       "eni-e5aa89a3", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     network_interfaces: [
    #       {
    #         association: {
    #           association_id: "eipassoc-0fbb766a", 
    #           ip_owner_id: "123456789012", 
    #           public_dns_name: "ec2-203-0-113-12.compute-1.amazonaws.com", 
    #           public_ip: "203.0.113.12", 
    #         }, 
    #         attachment: {
    #           attach_time: Time.parse("2013-11-30T23:36:42.000Z"), 
    #           attachment_id: "eni-attach-66c4350a", 
    #           delete_on_termination: false, 
    #           device_index: 1, 
    #           instance_id: "i-1234567890abcdef0", 
    #           instance_owner_id: "123456789012", 
    #           status: "attached", 
    #         }, 
    #         availability_zone: "us-east-1d", 
    #         description: "my network interface", 
    #         groups: [
    #           {
    #             group_id: "sg-8637d3e3", 
    #             group_name: "default", 
    #           }, 
    #         ], 
    #         mac_address: "02:2f:8f:b0:cf:75", 
    #         network_interface_id: "eni-e5aa89a3", 
    #         owner_id: "123456789012", 
    #         private_dns_name: "ip-10-0-1-17.ec2.internal", 
    #         private_ip_address: "10.0.1.17", 
    #         private_ip_addresses: [
    #           {
    #             association: {
    #               association_id: "eipassoc-0fbb766a", 
    #               ip_owner_id: "123456789012", 
    #               public_dns_name: "ec2-203-0-113-12.compute-1.amazonaws.com", 
    #               public_ip: "203.0.113.12", 
    #             }, 
    #             primary: true, 
    #             private_dns_name: "ip-10-0-1-17.ec2.internal", 
    #             private_ip_address: "10.0.1.17", 
    #           }, 
    #         ], 
    #         requester_managed: false, 
    #         source_dest_check: true, 
    #         status: "in-use", 
    #         subnet_id: "subnet-b61f49f0", 
    #         tag_set: [
    #         ], 
    #         vpc_id: "vpc-a01106c2", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_network_interfaces({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     network_interface_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.network_interfaces #=> Array
    #   resp.network_interfaces[0].association.allocation_id #=> String
    #   resp.network_interfaces[0].association.association_id #=> String
    #   resp.network_interfaces[0].association.ip_owner_id #=> String
    #   resp.network_interfaces[0].association.public_dns_name #=> String
    #   resp.network_interfaces[0].association.public_ip #=> String
    #   resp.network_interfaces[0].attachment.attach_time #=> Time
    #   resp.network_interfaces[0].attachment.attachment_id #=> String
    #   resp.network_interfaces[0].attachment.delete_on_termination #=> Boolean
    #   resp.network_interfaces[0].attachment.device_index #=> Integer
    #   resp.network_interfaces[0].attachment.instance_id #=> String
    #   resp.network_interfaces[0].attachment.instance_owner_id #=> String
    #   resp.network_interfaces[0].attachment.status #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.network_interfaces[0].availability_zone #=> String
    #   resp.network_interfaces[0].description #=> String
    #   resp.network_interfaces[0].groups #=> Array
    #   resp.network_interfaces[0].groups[0].group_name #=> String
    #   resp.network_interfaces[0].groups[0].group_id #=> String
    #   resp.network_interfaces[0].interface_type #=> String, one of "interface", "natGateway"
    #   resp.network_interfaces[0].ipv_6_addresses #=> Array
    #   resp.network_interfaces[0].ipv_6_addresses[0].ipv_6_address #=> String
    #   resp.network_interfaces[0].mac_address #=> String
    #   resp.network_interfaces[0].network_interface_id #=> String
    #   resp.network_interfaces[0].owner_id #=> String
    #   resp.network_interfaces[0].private_dns_name #=> String
    #   resp.network_interfaces[0].private_ip_address #=> String
    #   resp.network_interfaces[0].private_ip_addresses #=> Array
    #   resp.network_interfaces[0].private_ip_addresses[0].association.allocation_id #=> String
    #   resp.network_interfaces[0].private_ip_addresses[0].association.association_id #=> String
    #   resp.network_interfaces[0].private_ip_addresses[0].association.ip_owner_id #=> String
    #   resp.network_interfaces[0].private_ip_addresses[0].association.public_dns_name #=> String
    #   resp.network_interfaces[0].private_ip_addresses[0].association.public_ip #=> String
    #   resp.network_interfaces[0].private_ip_addresses[0].primary #=> Boolean
    #   resp.network_interfaces[0].private_ip_addresses[0].private_dns_name #=> String
    #   resp.network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.network_interfaces[0].requester_id #=> String
    #   resp.network_interfaces[0].requester_managed #=> Boolean
    #   resp.network_interfaces[0].source_dest_check #=> Boolean
    #   resp.network_interfaces[0].status #=> String, one of "available", "attaching", "in-use", "detaching"
    #   resp.network_interfaces[0].subnet_id #=> String
    #   resp.network_interfaces[0].tag_set #=> Array
    #   resp.network_interfaces[0].tag_set[0].key #=> String
    #   resp.network_interfaces[0].tag_set[0].value #=> String
    #   resp.network_interfaces[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfaces AWS API Documentation
    #
    # @overload describe_network_interfaces(params = {})
    # @param [Hash] params ({})
    def describe_network_interfaces(params = {}, options = {})
      req = build_request(:describe_network_interfaces, params)
      req.send_request(options)
    end

    # Describes one or more of your placement groups. For more information
    # about placement groups and cluster instances, see [Cluster
    # Instances][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `group-name` - The name of the placement group.
    #
    #   * `state` - The state of the placement group (`pending` \| `available`
    #     \| `deleting` \| `deleted`).
    #
    #   * `strategy` - The strategy of the placement group (`cluster`).
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :group_names
    #   One or more placement group names.
    #
    #   Default: Describes all your placement groups, or only those otherwise
    #   specified.
    #
    # @return [Types::DescribePlacementGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePlacementGroupsResult#placement_groups #placement_groups} => Array&lt;Types::PlacementGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_placement_groups({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     group_names: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.placement_groups #=> Array
    #   resp.placement_groups[0].group_name #=> String
    #   resp.placement_groups[0].state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.placement_groups[0].strategy #=> String, one of "cluster"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePlacementGroups AWS API Documentation
    #
    # @overload describe_placement_groups(params = {})
    # @param [Hash] params ({})
    def describe_placement_groups(params = {}, options = {})
      req = build_request(:describe_placement_groups, params)
      req.send_request(options)
    end

    # Describes available AWS services in a prefix list format, which
    # includes the prefix list name and prefix list ID of the service and
    # the IP address range for the service. A prefix list ID is required for
    # creating an outbound security group rule that allows traffic from a
    # VPC to access an AWS service through a VPC endpoint.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `prefix-list-id`\: The ID of a prefix list.
    #
    #   * `prefix-list-name`\: The name of a prefix list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    #   Constraint: If the value specified is greater than 1000, we return
    #   only 1000 items.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #
    # @option params [Array<String>] :prefix_list_ids
    #   One or more prefix list IDs.
    #
    # @return [Types::DescribePrefixListsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePrefixListsResult#next_token #next_token} => String
    #   * {Types::DescribePrefixListsResult#prefix_lists #prefix_lists} => Array&lt;Types::PrefixList&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_prefix_lists({
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #     prefix_list_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.prefix_lists #=> Array
    #   resp.prefix_lists[0].cidrs #=> Array
    #   resp.prefix_lists[0].cidrs[0] #=> String
    #   resp.prefix_lists[0].prefix_list_id #=> String
    #   resp.prefix_lists[0].prefix_list_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePrefixLists AWS API Documentation
    #
    # @overload describe_prefix_lists(params = {})
    # @param [Hash] params ({})
    def describe_prefix_lists(params = {}, options = {})
      req = build_request(:describe_prefix_lists, params)
      req.send_request(options)
    end

    # Describes one or more regions that are currently available to you.
    #
    # For a list of the regions supported by Amazon EC2, see [Regions and
    # Endpoints][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `endpoint` - The endpoint of the region (for example,
    #     `ec2.us-east-1.amazonaws.com`).
    #
    #   * `region-name` - The name of the region (for example, `us-east-1`).
    #
    # @option params [Array<String>] :region_names
    #   The names of one or more regions.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeRegionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegionsResult#regions #regions} => Array&lt;Types::Region&gt;
    #
    #
    # @example Example: To describe your regions
    #
    #   # This example describes all the regions that are available to you.
    #
    #   resp = client.describe_regions({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     regions: [
    #       {
    #         endpoint: "ec2.ap-south-1.amazonaws.com", 
    #         region_name: "ap-south-1", 
    #       }, 
    #       {
    #         endpoint: "ec2.eu-west-1.amazonaws.com", 
    #         region_name: "eu-west-1", 
    #       }, 
    #       {
    #         endpoint: "ec2.ap-southeast-1.amazonaws.com", 
    #         region_name: "ap-southeast-1", 
    #       }, 
    #       {
    #         endpoint: "ec2.ap-southeast-2.amazonaws.com", 
    #         region_name: "ap-southeast-2", 
    #       }, 
    #       {
    #         endpoint: "ec2.eu-central-1.amazonaws.com", 
    #         region_name: "eu-central-1", 
    #       }, 
    #       {
    #         endpoint: "ec2.ap-northeast-2.amazonaws.com", 
    #         region_name: "ap-northeast-2", 
    #       }, 
    #       {
    #         endpoint: "ec2.ap-northeast-1.amazonaws.com", 
    #         region_name: "ap-northeast-1", 
    #       }, 
    #       {
    #         endpoint: "ec2.us-east-1.amazonaws.com", 
    #         region_name: "us-east-1", 
    #       }, 
    #       {
    #         endpoint: "ec2.sa-east-1.amazonaws.com", 
    #         region_name: "sa-east-1", 
    #       }, 
    #       {
    #         endpoint: "ec2.us-west-1.amazonaws.com", 
    #         region_name: "us-west-1", 
    #       }, 
    #       {
    #         endpoint: "ec2.us-west-2.amazonaws.com", 
    #         region_name: "us-west-2", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_regions({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     region_names: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.regions #=> Array
    #   resp.regions[0].endpoint #=> String
    #   resp.regions[0].region_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeRegions AWS API Documentation
    #
    # @overload describe_regions(params = {})
    # @param [Hash] params ({})
    def describe_regions(params = {}, options = {})
      req = build_request(:describe_regions, params)
      req.send_request(options)
    end

    # Describes one or more of the Reserved Instances that you purchased.
    #
    # For more information about Reserved Instances, see [Reserved
    # Instances][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone where the Reserved
    #     Instance can be used.
    #
    #   * `duration` - The duration of the Reserved Instance (one year or
    #     three years), in seconds (`31536000` \| `94608000`).
    #
    #   * `end` - The time when the Reserved Instance expires (for example,
    #     2015-08-07T11:54:42.000Z).
    #
    #   * `fixed-price` - The purchase price of the Reserved Instance (for
    #     example, 9800.0).
    #
    #   * `instance-type` - The instance type that is covered by the
    #     reservation.
    #
    #   * `scope` - The scope of the Reserved Instance (`Region` or
    #     `Availability Zone`).
    #
    #   * `product-description` - The Reserved Instance product platform
    #     description. Instances that include `(Amazon VPC)` in the product
    #     platform description will only be displayed to EC2-Classic account
    #     holders and are for use with Amazon VPC (`Linux/UNIX` \| `Linux/UNIX
    #     (Amazon VPC)` \| `SUSE Linux` \| `SUSE Linux (Amazon VPC)` \| `Red
    #     Hat Enterprise Linux` \| `Red Hat Enterprise Linux (Amazon VPC)` \|
    #     `Windows` \| `Windows (Amazon VPC)` \| `Windows with SQL Server
    #     Standard` \| `Windows with SQL Server Standard (Amazon VPC)` \|
    #     `Windows with SQL Server Web` \| `Windows with SQL Server Web
    #     (Amazon VPC)` \| `Windows with SQL Server Enterprise` \| `Windows
    #     with SQL Server Enterprise (Amazon VPC)`).
    #
    #   * `reserved-instances-id` - The ID of the Reserved Instance.
    #
    #   * `start` - The time at which the Reserved Instance purchase request
    #     was placed (for example, 2014-08-07T11:54:42.000Z).
    #
    #   * `state` - The state of the Reserved Instance (`payment-pending` \|
    #     `active` \| `payment-failed` \| `retired`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `usage-price` - The usage price of the Reserved Instance, per hour
    #     (for example, 0.84).
    #
    # @option params [String] :offering_class
    #   Describes whether the Reserved Instance is Standard or Convertible.
    #
    # @option params [Array<String>] :reserved_instances_ids
    #   One or more Reserved Instance IDs.
    #
    #   Default: Describes all your Reserved Instances, or only those
    #   otherwise specified.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :offering_type
    #   The Reserved Instance offering type. If you are using tools that
    #   predate the 2011-11-01 API version, you only have access to the
    #   `Medium Utilization` Reserved Instance offering type.
    #
    # @return [Types::DescribeReservedInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedInstancesResult#reserved_instances #reserved_instances} => Array&lt;Types::ReservedInstances&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instances({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     offering_class: "standard", # accepts standard, convertible
    #     reserved_instances_ids: ["String"],
    #     dry_run: false,
    #     offering_type: "Heavy Utilization", # accepts Heavy Utilization, Medium Utilization, Light Utilization, No Upfront, Partial Upfront, All Upfront
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instances #=> Array
    #   resp.reserved_instances[0].availability_zone #=> String
    #   resp.reserved_instances[0].duration #=> Integer
    #   resp.reserved_instances[0].end #=> Time
    #   resp.reserved_instances[0].fixed_price #=> Float
    #   resp.reserved_instances[0].instance_count #=> Integer
    #   resp.reserved_instances[0].instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.reserved_instances[0].product_description #=> String, one of "Linux/UNIX", "Linux/UNIX (Amazon VPC)", "Windows", "Windows (Amazon VPC)"
    #   resp.reserved_instances[0].reserved_instances_id #=> String
    #   resp.reserved_instances[0].start #=> Time
    #   resp.reserved_instances[0].state #=> String, one of "payment-pending", "active", "payment-failed", "retired"
    #   resp.reserved_instances[0].usage_price #=> Float
    #   resp.reserved_instances[0].currency_code #=> String, one of "USD"
    #   resp.reserved_instances[0].instance_tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.reserved_instances[0].offering_class #=> String, one of "standard", "convertible"
    #   resp.reserved_instances[0].offering_type #=> String, one of "Heavy Utilization", "Medium Utilization", "Light Utilization", "No Upfront", "Partial Upfront", "All Upfront"
    #   resp.reserved_instances[0].recurring_charges #=> Array
    #   resp.reserved_instances[0].recurring_charges[0].amount #=> Float
    #   resp.reserved_instances[0].recurring_charges[0].frequency #=> String, one of "Hourly"
    #   resp.reserved_instances[0].scope #=> String, one of "Availability Zone", "Region"
    #   resp.reserved_instances[0].tags #=> Array
    #   resp.reserved_instances[0].tags[0].key #=> String
    #   resp.reserved_instances[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstances AWS API Documentation
    #
    # @overload describe_reserved_instances(params = {})
    # @param [Hash] params ({})
    def describe_reserved_instances(params = {}, options = {})
      req = build_request(:describe_reserved_instances, params)
      req.send_request(options)
    end

    # Describes your account's Reserved Instance listings in the Reserved
    # Instance Marketplace.
    #
    # The Reserved Instance Marketplace matches sellers who want to resell
    # Reserved Instance capacity that they no longer need with buyers who
    # want to purchase additional capacity. Reserved Instances bought and
    # sold through the Reserved Instance Marketplace work like any other
    # Reserved Instances.
    #
    # As a seller, you choose to list some or all of your Reserved
    # Instances, and you specify the upfront price to receive for them. Your
    # Reserved Instances are then listed in the Reserved Instance
    # Marketplace and are available for purchase.
    #
    # As a buyer, you specify the configuration of the Reserved Instance to
    # purchase, and the Marketplace matches what you're searching for with
    # what's available. The Marketplace first sells the lowest priced
    # Reserved Instances to you, and continues to sell available Reserved
    # Instance listings to you until your demand is met. You are charged
    # based on the total price of all of the listings that you purchase.
    #
    # For more information, see [Reserved Instance Marketplace][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `reserved-instances-id` - The ID of the Reserved Instances.
    #
    #   * `reserved-instances-listing-id` - The ID of the Reserved Instances
    #     listing.
    #
    #   * `status` - The status of the Reserved Instance listing (`pending` \|
    #     `active` \| `cancelled` \| `closed`).
    #
    #   * `status-message` - The reason for the status.
    #
    # @option params [String] :reserved_instances_id
    #   One or more Reserved Instance IDs.
    #
    # @option params [String] :reserved_instances_listing_id
    #   One or more Reserved Instance listing IDs.
    #
    # @return [Types::DescribeReservedInstancesListingsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedInstancesListingsResult#reserved_instances_listings #reserved_instances_listings} => Array&lt;Types::ReservedInstancesListing&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instances_listings({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     reserved_instances_id: "String",
    #     reserved_instances_listing_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instances_listings #=> Array
    #   resp.reserved_instances_listings[0].client_token #=> String
    #   resp.reserved_instances_listings[0].create_date #=> Time
    #   resp.reserved_instances_listings[0].instance_counts #=> Array
    #   resp.reserved_instances_listings[0].instance_counts[0].instance_count #=> Integer
    #   resp.reserved_instances_listings[0].instance_counts[0].state #=> String, one of "available", "sold", "cancelled", "pending"
    #   resp.reserved_instances_listings[0].price_schedules #=> Array
    #   resp.reserved_instances_listings[0].price_schedules[0].active #=> Boolean
    #   resp.reserved_instances_listings[0].price_schedules[0].currency_code #=> String, one of "USD"
    #   resp.reserved_instances_listings[0].price_schedules[0].price #=> Float
    #   resp.reserved_instances_listings[0].price_schedules[0].term #=> Integer
    #   resp.reserved_instances_listings[0].reserved_instances_id #=> String
    #   resp.reserved_instances_listings[0].reserved_instances_listing_id #=> String
    #   resp.reserved_instances_listings[0].status #=> String, one of "active", "pending", "cancelled", "closed"
    #   resp.reserved_instances_listings[0].status_message #=> String
    #   resp.reserved_instances_listings[0].tags #=> Array
    #   resp.reserved_instances_listings[0].tags[0].key #=> String
    #   resp.reserved_instances_listings[0].tags[0].value #=> String
    #   resp.reserved_instances_listings[0].update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesListings AWS API Documentation
    #
    # @overload describe_reserved_instances_listings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_instances_listings(params = {}, options = {})
      req = build_request(:describe_reserved_instances_listings, params)
      req.send_request(options)
    end

    # Describes the modifications made to your Reserved Instances. If no
    # parameter is specified, information about all your Reserved Instances
    # modification requests is returned. If a modification ID is specified,
    # only information about the specific modification is returned.
    #
    # For more information, see [Modifying Reserved Instances][1] in the
    # Amazon Elastic Compute Cloud User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `client-token` - The idempotency token for the modification request.
    #
    #   * `create-date` - The time when the modification request was created.
    #
    #   * `effective-date` - The time when the modification becomes effective.
    #
    #   * `modification-result.reserved-instances-id` - The ID for the
    #     Reserved Instances created as part of the modification request. This
    #     ID is only available when the status of the modification is
    #     `fulfilled`.
    #
    #   * `modification-result.target-configuration.availability-zone` - The
    #     Availability Zone for the new Reserved Instances.
    #
    #   * `modification-result.target-configuration.instance-count ` - The
    #     number of new Reserved Instances.
    #
    #   * `modification-result.target-configuration.instance-type` - The
    #     instance type of the new Reserved Instances.
    #
    #   * `modification-result.target-configuration.platform` - The network
    #     platform of the new Reserved Instances (`EC2-Classic` \| `EC2-VPC`).
    #
    #   * `reserved-instances-id` - The ID of the Reserved Instances modified.
    #
    #   * `reserved-instances-modification-id` - The ID of the modification
    #     request.
    #
    #   * `status` - The status of the Reserved Instances modification request
    #     (`processing` \| `fulfilled` \| `failed`).
    #
    #   * `status-message` - The reason for the status.
    #
    #   * `update-date` - The time when the modification request was last
    #     updated.
    #
    # @option params [Array<String>] :reserved_instances_modification_ids
    #   IDs for the submitted modification request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @return [Types::DescribeReservedInstancesModificationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedInstancesModificationsResult#next_token #next_token} => String
    #   * {Types::DescribeReservedInstancesModificationsResult#reserved_instances_modifications #reserved_instances_modifications} => Array&lt;Types::ReservedInstancesModification&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instances_modifications({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     reserved_instances_modification_ids: ["String"],
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reserved_instances_modifications #=> Array
    #   resp.reserved_instances_modifications[0].client_token #=> String
    #   resp.reserved_instances_modifications[0].create_date #=> Time
    #   resp.reserved_instances_modifications[0].effective_date #=> Time
    #   resp.reserved_instances_modifications[0].modification_results #=> Array
    #   resp.reserved_instances_modifications[0].modification_results[0].reserved_instances_id #=> String
    #   resp.reserved_instances_modifications[0].modification_results[0].target_configuration.availability_zone #=> String
    #   resp.reserved_instances_modifications[0].modification_results[0].target_configuration.instance_count #=> Integer
    #   resp.reserved_instances_modifications[0].modification_results[0].target_configuration.instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.reserved_instances_modifications[0].modification_results[0].target_configuration.platform #=> String
    #   resp.reserved_instances_modifications[0].modification_results[0].target_configuration.scope #=> String, one of "Availability Zone", "Region"
    #   resp.reserved_instances_modifications[0].reserved_instances_ids #=> Array
    #   resp.reserved_instances_modifications[0].reserved_instances_ids[0].reserved_instances_id #=> String
    #   resp.reserved_instances_modifications[0].reserved_instances_modification_id #=> String
    #   resp.reserved_instances_modifications[0].status #=> String
    #   resp.reserved_instances_modifications[0].status_message #=> String
    #   resp.reserved_instances_modifications[0].update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesModifications AWS API Documentation
    #
    # @overload describe_reserved_instances_modifications(params = {})
    # @param [Hash] params ({})
    def describe_reserved_instances_modifications(params = {}, options = {})
      req = build_request(:describe_reserved_instances_modifications, params)
      req.send_request(options)
    end

    # Describes Reserved Instance offerings that are available for purchase.
    # With Reserved Instances, you purchase the right to launch instances
    # for a period of time. During that time period, you do not receive
    # insufficient capacity errors, and you pay a lower usage rate than the
    # rate charged for On-Demand instances for the actual time used.
    #
    # If you have listed your own Reserved Instances for sale in the
    # Reserved Instance Marketplace, they will be excluded from these
    # results. This is to ensure that you do not purchase your own Reserved
    # Instances.
    #
    # For more information, see [Reserved Instance Marketplace][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
    #
    # @option params [String] :availability_zone
    #   The Availability Zone in which the Reserved Instance can be used.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone where the Reserved
    #     Instance can be used.
    #
    #   * `duration` - The duration of the Reserved Instance (for example, one
    #     year or three years), in seconds (`31536000` \| `94608000`).
    #
    #   * `fixed-price` - The purchase price of the Reserved Instance (for
    #     example, 9800.0).
    #
    #   * `instance-type` - The instance type that is covered by the
    #     reservation.
    #
    #   * `marketplace` - Set to `true` to show only Reserved Instance
    #     Marketplace offerings. When this filter is not used, which is the
    #     default behavior, all offerings from both AWS and the Reserved
    #     Instance Marketplace are listed.
    #
    #   * `product-description` - The Reserved Instance product platform
    #     description. Instances that include `(Amazon VPC)` in the product
    #     platform description will only be displayed to EC2-Classic account
    #     holders and are for use with Amazon VPC. (`Linux/UNIX` \|
    #     `Linux/UNIX (Amazon VPC)` \| `SUSE Linux` \| `SUSE Linux (Amazon
    #     VPC)` \| `Red Hat Enterprise Linux` \| `Red Hat Enterprise Linux
    #     (Amazon VPC)` \| `Windows` \| `Windows (Amazon VPC)` \| `Windows
    #     with SQL Server Standard` \| `Windows with SQL Server Standard
    #     (Amazon VPC)` \| `Windows with SQL Server Web` \| ` Windows with SQL
    #     Server Web (Amazon VPC)` \| `Windows with SQL Server Enterprise` \|
    #     `Windows with SQL Server Enterprise (Amazon VPC)`)
    #
    #   * `reserved-instances-offering-id` - The Reserved Instances offering
    #     ID.
    #
    #   * `scope` - The scope of the Reserved Instance (`Availability Zone` or
    #     `Region`).
    #
    #   * `usage-price` - The usage price of the Reserved Instance, per hour
    #     (for example, 0.84).
    #
    # @option params [Boolean] :include_marketplace
    #   Include Reserved Instance Marketplace offerings in the response.
    #
    # @option params [String] :instance_type
    #   The instance type that the reservation will cover (for example,
    #   `m1.small`). For more information, see [Instance Types][1] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #
    # @option params [Integer] :max_duration
    #   The maximum duration (in seconds) to filter when searching for
    #   offerings.
    #
    #   Default: 94608000 (3 years)
    #
    # @option params [Integer] :max_instance_count
    #   The maximum number of instances to filter when searching for
    #   offerings.
    #
    #   Default: 20
    #
    # @option params [Integer] :min_duration
    #   The minimum duration (in seconds) to filter when searching for
    #   offerings.
    #
    #   Default: 2592000 (1 month)
    #
    # @option params [String] :offering_class
    #   The offering class of the Reserved Instance. Can be `standard` or
    #   `convertible`.
    #
    # @option params [String] :product_description
    #   The Reserved Instance product platform description. Instances that
    #   include `(Amazon VPC)` in the description are for use with Amazon VPC.
    #
    # @option params [Array<String>] :reserved_instances_offering_ids
    #   One or more Reserved Instances offering IDs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :instance_tenancy
    #   The tenancy of the instances covered by the reservation. A Reserved
    #   Instance with a tenancy of `dedicated` is applied to instances that
    #   run in a VPC on single-tenant hardware (i.e., Dedicated Instances).
    #
    #   **Important:** The `host` value cannot be used with this parameter.
    #   Use the `default` or `dedicated` values only.
    #
    #   Default: `default`
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results of the initial request can be seen by
    #   sending another request with the returned `NextToken` value. The
    #   maximum is 100.
    #
    #   Default: 100
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @option params [String] :offering_type
    #   The Reserved Instance offering type. If you are using tools that
    #   predate the 2011-11-01 API version, you only have access to the
    #   `Medium Utilization` Reserved Instance offering type.
    #
    # @return [Types::DescribeReservedInstancesOfferingsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservedInstancesOfferingsResult#reserved_instances_offerings #reserved_instances_offerings} => Array&lt;Types::ReservedInstancesOffering&gt;
    #   * {Types::DescribeReservedInstancesOfferingsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_instances_offerings({
    #     availability_zone: "String",
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     include_marketplace: false,
    #     instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #     max_duration: 1,
    #     max_instance_count: 1,
    #     min_duration: 1,
    #     offering_class: "standard", # accepts standard, convertible
    #     product_description: "Linux/UNIX", # accepts Linux/UNIX, Linux/UNIX (Amazon VPC), Windows, Windows (Amazon VPC)
    #     reserved_instances_offering_ids: ["String"],
    #     dry_run: false,
    #     instance_tenancy: "default", # accepts default, dedicated, host
    #     max_results: 1,
    #     next_token: "String",
    #     offering_type: "Heavy Utilization", # accepts Heavy Utilization, Medium Utilization, Light Utilization, No Upfront, Partial Upfront, All Upfront
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instances_offerings #=> Array
    #   resp.reserved_instances_offerings[0].availability_zone #=> String
    #   resp.reserved_instances_offerings[0].duration #=> Integer
    #   resp.reserved_instances_offerings[0].fixed_price #=> Float
    #   resp.reserved_instances_offerings[0].instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.reserved_instances_offerings[0].product_description #=> String, one of "Linux/UNIX", "Linux/UNIX (Amazon VPC)", "Windows", "Windows (Amazon VPC)"
    #   resp.reserved_instances_offerings[0].reserved_instances_offering_id #=> String
    #   resp.reserved_instances_offerings[0].usage_price #=> Float
    #   resp.reserved_instances_offerings[0].currency_code #=> String, one of "USD"
    #   resp.reserved_instances_offerings[0].instance_tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.reserved_instances_offerings[0].marketplace #=> Boolean
    #   resp.reserved_instances_offerings[0].offering_class #=> String, one of "standard", "convertible"
    #   resp.reserved_instances_offerings[0].offering_type #=> String, one of "Heavy Utilization", "Medium Utilization", "Light Utilization", "No Upfront", "Partial Upfront", "All Upfront"
    #   resp.reserved_instances_offerings[0].pricing_details #=> Array
    #   resp.reserved_instances_offerings[0].pricing_details[0].count #=> Integer
    #   resp.reserved_instances_offerings[0].pricing_details[0].price #=> Float
    #   resp.reserved_instances_offerings[0].recurring_charges #=> Array
    #   resp.reserved_instances_offerings[0].recurring_charges[0].amount #=> Float
    #   resp.reserved_instances_offerings[0].recurring_charges[0].frequency #=> String, one of "Hourly"
    #   resp.reserved_instances_offerings[0].scope #=> String, one of "Availability Zone", "Region"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesOfferings AWS API Documentation
    #
    # @overload describe_reserved_instances_offerings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_instances_offerings(params = {}, options = {})
      req = build_request(:describe_reserved_instances_offerings, params)
      req.send_request(options)
    end

    # Describes one or more of your route tables.
    #
    # Each subnet in your VPC must be associated with a route table. If a
    # subnet is not explicitly associated with any route table, it is
    # implicitly associated with the main route table. This command does not
    # return the subnet ID for implicit associations.
    #
    # For more information about route tables, see [Route Tables][1] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `association.route-table-association-id` - The ID of an association
    #     ID for the route table.
    #
    #   * `association.route-table-id` - The ID of the route table involved in
    #     the association.
    #
    #   * `association.subnet-id` - The ID of the subnet involved in the
    #     association.
    #
    #   * `association.main` - Indicates whether the route table is the main
    #     route table for the VPC (`true` \| `false`). Route tables that do
    #     not have an association ID are not returned in the response.
    #
    #   * `route-table-id` - The ID of the route table.
    #
    #   * `route.destination-cidr-block` - The IPv4 CIDR range specified in a
    #     route in the table.
    #
    #   * `route.destination-ipv6-cidr-block` - The IPv6 CIDR range specified
    #     in a route in the route table.
    #
    #   * `route.destination-prefix-list-id` - The ID (prefix) of the AWS
    #     service specified in a route in the table.
    #
    #   * `route.egress-only-internet-gateway-id` - The ID of an egress-only
    #     Internet gateway specified in a route in the route table.
    #
    #   * `route.gateway-id` - The ID of a gateway specified in a route in the
    #     table.
    #
    #   * `route.instance-id` - The ID of an instance specified in a route in
    #     the table.
    #
    #   * `route.nat-gateway-id` - The ID of a NAT gateway.
    #
    #   * `route.origin` - Describes how the route was created.
    #     `CreateRouteTable` indicates that the route was automatically
    #     created when the route table was created; `CreateRoute` indicates
    #     that the route was manually added to the route table;
    #     `EnableVgwRoutePropagation` indicates that the route was propagated
    #     by route propagation.
    #
    #   * `route.state` - The state of a route in the route table (`active` \|
    #     `blackhole`). The blackhole state indicates that the route's target
    #     isn't available (for example, the specified gateway isn't attached
    #     to the VPC, the specified NAT instance has been terminated, and so
    #     on).
    #
    #   * `route.vpc-peering-connection-id` - The ID of a VPC peering
    #     connection specified in a route in the table.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC for the route table.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :route_table_ids
    #   One or more route table IDs.
    #
    #   Default: Describes all your route tables.
    #
    # @return [Types::DescribeRouteTablesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRouteTablesResult#route_tables #route_tables} => Array&lt;Types::RouteTable&gt;
    #
    #
    # @example Example: To describe a route table
    #
    #   # This example describes the specified route table.
    #
    #   resp = client.describe_route_tables({
    #     route_table_ids: [
    #       "rtb-1f382e7d", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     route_tables: [
    #       {
    #         associations: [
    #           {
    #             main: true, 
    #             route_table_association_id: "rtbassoc-d8ccddba", 
    #             route_table_id: "rtb-1f382e7d", 
    #           }, 
    #         ], 
    #         propagating_vgws: [
    #         ], 
    #         route_table_id: "rtb-1f382e7d", 
    #         routes: [
    #           {
    #             destination_cidr_block: "10.0.0.0/16", 
    #             gateway_id: "local", 
    #             state: "active", 
    #           }, 
    #         ], 
    #         tags: [
    #         ], 
    #         vpc_id: "vpc-a01106c2", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_route_tables({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     route_table_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.route_tables #=> Array
    #   resp.route_tables[0].associations #=> Array
    #   resp.route_tables[0].associations[0].main #=> Boolean
    #   resp.route_tables[0].associations[0].route_table_association_id #=> String
    #   resp.route_tables[0].associations[0].route_table_id #=> String
    #   resp.route_tables[0].associations[0].subnet_id #=> String
    #   resp.route_tables[0].propagating_vgws #=> Array
    #   resp.route_tables[0].propagating_vgws[0].gateway_id #=> String
    #   resp.route_tables[0].route_table_id #=> String
    #   resp.route_tables[0].routes #=> Array
    #   resp.route_tables[0].routes[0].destination_cidr_block #=> String
    #   resp.route_tables[0].routes[0].destination_ipv_6_cidr_block #=> String
    #   resp.route_tables[0].routes[0].destination_prefix_list_id #=> String
    #   resp.route_tables[0].routes[0].egress_only_internet_gateway_id #=> String
    #   resp.route_tables[0].routes[0].gateway_id #=> String
    #   resp.route_tables[0].routes[0].instance_id #=> String
    #   resp.route_tables[0].routes[0].instance_owner_id #=> String
    #   resp.route_tables[0].routes[0].nat_gateway_id #=> String
    #   resp.route_tables[0].routes[0].network_interface_id #=> String
    #   resp.route_tables[0].routes[0].origin #=> String, one of "CreateRouteTable", "CreateRoute", "EnableVgwRoutePropagation"
    #   resp.route_tables[0].routes[0].state #=> String, one of "active", "blackhole"
    #   resp.route_tables[0].routes[0].vpc_peering_connection_id #=> String
    #   resp.route_tables[0].tags #=> Array
    #   resp.route_tables[0].tags[0].key #=> String
    #   resp.route_tables[0].tags[0].value #=> String
    #   resp.route_tables[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeRouteTables AWS API Documentation
    #
    # @overload describe_route_tables(params = {})
    # @param [Hash] params ({})
    def describe_route_tables(params = {}, options = {})
      req = build_request(:describe_route_tables, params)
      req.send_request(options)
    end

    # Finds available schedules that meet the specified criteria.
    #
    # You can search for an available schedule no more than 3 months in
    # advance. You must meet the minimum required duration of 1,200 hours
    # per year. For example, the minimum daily schedule is 4 hours, the
    # minimum weekly schedule is 24 hours, and the minimum monthly schedule
    # is 100 hours.
    #
    # After you find a schedule that meets your needs, call
    # PurchaseScheduledInstances to purchase Scheduled Instances with that
    # schedule.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone (for example,
    #     `us-west-2a`).
    #
    #   * `instance-type` - The instance type (for example, `c4.large`).
    #
    #   * `network-platform` - The network platform (`EC2-Classic` or
    #     `EC2-VPC`).
    #
    #   * `platform` - The platform (`Linux/UNIX` or `Windows`).
    #
    # @option params [required, Types::SlotDateTimeRangeRequest] :first_slot_start_time_range
    #   The time period for the first schedule to start.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. This value
    #   can be between 5 and 300. The default value is 300. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [Integer] :max_slot_duration_in_hours
    #   The maximum available duration, in hours. This value must be greater
    #   than `MinSlotDurationInHours` and less than 1,720.
    #
    # @option params [Integer] :min_slot_duration_in_hours
    #   The minimum available duration, in hours. The minimum required
    #   duration is 1,200 hours per year. For example, the minimum daily
    #   schedule is 4 hours, the minimum weekly schedule is 24 hours, and the
    #   minimum monthly schedule is 100 hours.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [required, Types::ScheduledInstanceRecurrenceRequest] :recurrence
    #   The schedule recurrence.
    #
    # @return [Types::DescribeScheduledInstanceAvailabilityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScheduledInstanceAvailabilityResult#next_token #next_token} => String
    #   * {Types::DescribeScheduledInstanceAvailabilityResult#scheduled_instance_availability_set #scheduled_instance_availability_set} => Array&lt;Types::ScheduledInstanceAvailability&gt;
    #
    #
    # @example Example: To describe an available schedule
    #
    #   # This example describes a schedule that occurs every week on Sunday, starting on the specified date. Note that the output contains a single schedule as an example.
    #
    #   resp = client.describe_scheduled_instance_availability({
    #     first_slot_start_time_range: {
    #       earliest_time: Time.parse("2016-01-31T00:00:00Z"), 
    #       latest_time: Time.parse("2016-01-31T04:00:00Z"), 
    #     }, 
    #     recurrence: {
    #       frequency: "Weekly", 
    #       interval: 1, 
    #       occurrence_days: [
    #         1, 
    #       ], 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scheduled_instance_availability_set: [
    #       {
    #         availability_zone: "us-west-2b", 
    #         available_instance_count: 20, 
    #         first_slot_start_time: Time.parse("2016-01-31T00:00:00Z"), 
    #         hourly_price: "0.095", 
    #         instance_type: "c4.large", 
    #         max_term_duration_in_days: 366, 
    #         min_term_duration_in_days: 366, 
    #         network_platform: "EC2-VPC", 
    #         platform: "Linux/UNIX", 
    #         purchase_token: "eyJ2IjoiMSIsInMiOjEsImMiOi...", 
    #         recurrence: {
    #           frequency: "Weekly", 
    #           interval: 1, 
    #           occurrence_day_set: [
    #             1, 
    #           ], 
    #           occurrence_relative_to_end: false, 
    #         }, 
    #         slot_duration_in_hours: 23, 
    #         total_scheduled_instance_hours: 1219, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_instance_availability({
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     first_slot_start_time_range: { # required
    #       earliest_time: Time.now, # required
    #       latest_time: Time.now, # required
    #     },
    #     max_results: 1,
    #     max_slot_duration_in_hours: 1,
    #     min_slot_duration_in_hours: 1,
    #     next_token: "String",
    #     recurrence: { # required
    #       frequency: "String",
    #       interval: 1,
    #       occurrence_days: [1],
    #       occurrence_relative_to_end: false,
    #       occurrence_unit: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.scheduled_instance_availability_set #=> Array
    #   resp.scheduled_instance_availability_set[0].availability_zone #=> String
    #   resp.scheduled_instance_availability_set[0].available_instance_count #=> Integer
    #   resp.scheduled_instance_availability_set[0].first_slot_start_time #=> Time
    #   resp.scheduled_instance_availability_set[0].hourly_price #=> String
    #   resp.scheduled_instance_availability_set[0].instance_type #=> String
    #   resp.scheduled_instance_availability_set[0].max_term_duration_in_days #=> Integer
    #   resp.scheduled_instance_availability_set[0].min_term_duration_in_days #=> Integer
    #   resp.scheduled_instance_availability_set[0].network_platform #=> String
    #   resp.scheduled_instance_availability_set[0].platform #=> String
    #   resp.scheduled_instance_availability_set[0].purchase_token #=> String
    #   resp.scheduled_instance_availability_set[0].recurrence.frequency #=> String
    #   resp.scheduled_instance_availability_set[0].recurrence.interval #=> Integer
    #   resp.scheduled_instance_availability_set[0].recurrence.occurrence_day_set #=> Array
    #   resp.scheduled_instance_availability_set[0].recurrence.occurrence_day_set[0] #=> Integer
    #   resp.scheduled_instance_availability_set[0].recurrence.occurrence_relative_to_end #=> Boolean
    #   resp.scheduled_instance_availability_set[0].recurrence.occurrence_unit #=> String
    #   resp.scheduled_instance_availability_set[0].slot_duration_in_hours #=> Integer
    #   resp.scheduled_instance_availability_set[0].total_scheduled_instance_hours #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeScheduledInstanceAvailability AWS API Documentation
    #
    # @overload describe_scheduled_instance_availability(params = {})
    # @param [Hash] params ({})
    def describe_scheduled_instance_availability(params = {}, options = {})
      req = build_request(:describe_scheduled_instance_availability, params)
      req.send_request(options)
    end

    # Describes one or more of your Scheduled Instances.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone (for example,
    #     `us-west-2a`).
    #
    #   * `instance-type` - The instance type (for example, `c4.large`).
    #
    #   * `network-platform` - The network platform (`EC2-Classic` or
    #     `EC2-VPC`).
    #
    #   * `platform` - The platform (`Linux/UNIX` or `Windows`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. This value
    #   can be between 5 and 300. The default value is 100. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Array<String>] :scheduled_instance_ids
    #   One or more Scheduled Instance IDs.
    #
    # @option params [Types::SlotStartTimeRangeRequest] :slot_start_time_range
    #   The time period for the first schedule to start.
    #
    # @return [Types::DescribeScheduledInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScheduledInstancesResult#next_token #next_token} => String
    #   * {Types::DescribeScheduledInstancesResult#scheduled_instance_set #scheduled_instance_set} => Array&lt;Types::ScheduledInstance&gt;
    #
    #
    # @example Example: To describe your Scheduled Instances
    #
    #   # This example describes the specified Scheduled Instance.
    #
    #   resp = client.describe_scheduled_instances({
    #     scheduled_instance_ids: [
    #       "sci-1234-1234-1234-1234-123456789012", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scheduled_instance_set: [
    #       {
    #         availability_zone: "us-west-2b", 
    #         create_date: Time.parse("2016-01-25T21:43:38.612Z"), 
    #         hourly_price: "0.095", 
    #         instance_count: 1, 
    #         instance_type: "c4.large", 
    #         network_platform: "EC2-VPC", 
    #         next_slot_start_time: Time.parse("2016-01-31T09:00:00Z"), 
    #         platform: "Linux/UNIX", 
    #         recurrence: {
    #           frequency: "Weekly", 
    #           interval: 1, 
    #           occurrence_day_set: [
    #             1, 
    #           ], 
    #           occurrence_relative_to_end: false, 
    #           occurrence_unit: "", 
    #         }, 
    #         scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012", 
    #         slot_duration_in_hours: 32, 
    #         term_end_date: Time.parse("2017-01-31T09:00:00Z"), 
    #         term_start_date: Time.parse("2016-01-31T09:00:00Z"), 
    #         total_scheduled_instance_hours: 1696, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_instances({
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #     scheduled_instance_ids: ["String"],
    #     slot_start_time_range: {
    #       earliest_time: Time.now,
    #       latest_time: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.scheduled_instance_set #=> Array
    #   resp.scheduled_instance_set[0].availability_zone #=> String
    #   resp.scheduled_instance_set[0].create_date #=> Time
    #   resp.scheduled_instance_set[0].hourly_price #=> String
    #   resp.scheduled_instance_set[0].instance_count #=> Integer
    #   resp.scheduled_instance_set[0].instance_type #=> String
    #   resp.scheduled_instance_set[0].network_platform #=> String
    #   resp.scheduled_instance_set[0].next_slot_start_time #=> Time
    #   resp.scheduled_instance_set[0].platform #=> String
    #   resp.scheduled_instance_set[0].previous_slot_end_time #=> Time
    #   resp.scheduled_instance_set[0].recurrence.frequency #=> String
    #   resp.scheduled_instance_set[0].recurrence.interval #=> Integer
    #   resp.scheduled_instance_set[0].recurrence.occurrence_day_set #=> Array
    #   resp.scheduled_instance_set[0].recurrence.occurrence_day_set[0] #=> Integer
    #   resp.scheduled_instance_set[0].recurrence.occurrence_relative_to_end #=> Boolean
    #   resp.scheduled_instance_set[0].recurrence.occurrence_unit #=> String
    #   resp.scheduled_instance_set[0].scheduled_instance_id #=> String
    #   resp.scheduled_instance_set[0].slot_duration_in_hours #=> Integer
    #   resp.scheduled_instance_set[0].term_end_date #=> Time
    #   resp.scheduled_instance_set[0].term_start_date #=> Time
    #   resp.scheduled_instance_set[0].total_scheduled_instance_hours #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeScheduledInstances AWS API Documentation
    #
    # @overload describe_scheduled_instances(params = {})
    # @param [Hash] params ({})
    def describe_scheduled_instances(params = {}, options = {})
      req = build_request(:describe_scheduled_instances, params)
      req.send_request(options)
    end

    # \[EC2-VPC only\] Describes the VPCs on the other side of a VPC peering
    # connection that are referencing the security groups you've specified
    # in this request.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   DryRunOperation. Otherwise, it is UnauthorizedOperation.
    #
    # @option params [required, Array<String>] :group_id
    #   One or more security group IDs in your account.
    #
    # @return [Types::DescribeSecurityGroupReferencesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityGroupReferencesResult#security_group_reference_set #security_group_reference_set} => Array&lt;Types::SecurityGroupReference&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_group_references({
    #     dry_run: false,
    #     group_id: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group_reference_set #=> Array
    #   resp.security_group_reference_set[0].group_id #=> String
    #   resp.security_group_reference_set[0].referencing_vpc_id #=> String
    #   resp.security_group_reference_set[0].vpc_peering_connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSecurityGroupReferences AWS API Documentation
    #
    # @overload describe_security_group_references(params = {})
    # @param [Hash] params ({})
    def describe_security_group_references(params = {}, options = {})
      req = build_request(:describe_security_group_references, params)
      req.send_request(options)
    end

    # Describes one or more of your security groups.
    #
    # A security group is for use with instances either in the EC2-Classic
    # platform or in a specific VPC. For more information, see [Amazon EC2
    # Security Groups][1] in the *Amazon Elastic Compute Cloud User Guide*
    # and [Security Groups for Your VPC][2] in the *Amazon Virtual Private
    # Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
    # [2]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters. If using multiple filters for rules, the results
    #   include security groups for which any combination of rules - not
    #   necessarily a single rule - match all filters.
    #
    #   * `description` - The description of the security group.
    #
    #   * `egress.ip-permission.prefix-list-id` - The ID (prefix) of the AWS
    #     service to which the security group allows access.
    #
    #   * `group-id` - The ID of the security group.
    #
    #   * `group-name` - The name of the security group.
    #
    #   * `ip-permission.cidr` - An IPv4 CIDR range that has been granted
    #     permission in a security group rule.
    #
    #   * `ip-permission.from-port` - The start of port range for the TCP and
    #     UDP protocols, or an ICMP type number.
    #
    #   * `ip-permission.group-id` - The ID of a security group that has been
    #     granted permission.
    #
    #   * `ip-permission.group-name` - The name of a security group that has
    #     been granted permission.
    #
    #   * `ip-permission.ipv6-cidr` - An IPv6 CIDR range that has been granted
    #     permission in a security group rule.
    #
    #   * `ip-permission.protocol` - The IP protocol for the permission (`tcp`
    #     \| `udp` \| `icmp` or a protocol number).
    #
    #   * `ip-permission.to-port` - The end of port range for the TCP and UDP
    #     protocols, or an ICMP code.
    #
    #   * `ip-permission.user-id` - The ID of an AWS account that has been
    #     granted permission.
    #
    #   * `owner-id` - The AWS account ID of the owner of the security group.
    #
    #   * `tag-key` - The key of a tag assigned to the security group.
    #
    #   * `tag-value` - The value of a tag assigned to the security group.
    #
    #   * `vpc-id` - The ID of the VPC specified when the security group was
    #     created.
    #
    # @option params [Array<String>] :group_ids
    #   One or more security group IDs. Required for security groups in a
    #   nondefault VPC.
    #
    #   Default: Describes all your security groups.
    #
    # @option params [Array<String>] :group_names
    #   \[EC2-Classic and default VPC only\] One or more security group names.
    #   You can specify either the security group name or the security group
    #   ID. For security groups in a nondefault VPC, use the `group-name`
    #   filter to describe security groups by name.
    #
    #   Default: Describes all your security groups.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeSecurityGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityGroupsResult#security_groups #security_groups} => Array&lt;Types::SecurityGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_groups({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     group_ids: ["String"],
    #     group_names: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_groups #=> Array
    #   resp.security_groups[0].description #=> String
    #   resp.security_groups[0].group_name #=> String
    #   resp.security_groups[0].ip_permissions #=> Array
    #   resp.security_groups[0].ip_permissions[0].from_port #=> Integer
    #   resp.security_groups[0].ip_permissions[0].ip_protocol #=> String
    #   resp.security_groups[0].ip_permissions[0].ip_ranges #=> Array
    #   resp.security_groups[0].ip_permissions[0].ip_ranges[0].cidr_ip #=> String
    #   resp.security_groups[0].ip_permissions[0].ipv_6_ranges #=> Array
    #   resp.security_groups[0].ip_permissions[0].ipv_6_ranges[0].cidr_ipv_6 #=> String
    #   resp.security_groups[0].ip_permissions[0].prefix_list_ids #=> Array
    #   resp.security_groups[0].ip_permissions[0].prefix_list_ids[0].prefix_list_id #=> String
    #   resp.security_groups[0].ip_permissions[0].to_port #=> Integer
    #   resp.security_groups[0].ip_permissions[0].user_id_group_pairs #=> Array
    #   resp.security_groups[0].ip_permissions[0].user_id_group_pairs[0].group_id #=> String
    #   resp.security_groups[0].ip_permissions[0].user_id_group_pairs[0].group_name #=> String
    #   resp.security_groups[0].ip_permissions[0].user_id_group_pairs[0].peering_status #=> String
    #   resp.security_groups[0].ip_permissions[0].user_id_group_pairs[0].user_id #=> String
    #   resp.security_groups[0].ip_permissions[0].user_id_group_pairs[0].vpc_id #=> String
    #   resp.security_groups[0].ip_permissions[0].user_id_group_pairs[0].vpc_peering_connection_id #=> String
    #   resp.security_groups[0].owner_id #=> String
    #   resp.security_groups[0].group_id #=> String
    #   resp.security_groups[0].ip_permissions_egress #=> Array
    #   resp.security_groups[0].ip_permissions_egress[0].from_port #=> Integer
    #   resp.security_groups[0].ip_permissions_egress[0].ip_protocol #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].ip_ranges #=> Array
    #   resp.security_groups[0].ip_permissions_egress[0].ip_ranges[0].cidr_ip #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].ipv_6_ranges #=> Array
    #   resp.security_groups[0].ip_permissions_egress[0].ipv_6_ranges[0].cidr_ipv_6 #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].prefix_list_ids #=> Array
    #   resp.security_groups[0].ip_permissions_egress[0].prefix_list_ids[0].prefix_list_id #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].to_port #=> Integer
    #   resp.security_groups[0].ip_permissions_egress[0].user_id_group_pairs #=> Array
    #   resp.security_groups[0].ip_permissions_egress[0].user_id_group_pairs[0].group_id #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].user_id_group_pairs[0].group_name #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].user_id_group_pairs[0].peering_status #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].user_id_group_pairs[0].user_id #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].user_id_group_pairs[0].vpc_id #=> String
    #   resp.security_groups[0].ip_permissions_egress[0].user_id_group_pairs[0].vpc_peering_connection_id #=> String
    #   resp.security_groups[0].tags #=> Array
    #   resp.security_groups[0].tags[0].key #=> String
    #   resp.security_groups[0].tags[0].value #=> String
    #   resp.security_groups[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSecurityGroups AWS API Documentation
    #
    # @overload describe_security_groups(params = {})
    # @param [Hash] params ({})
    def describe_security_groups(params = {}, options = {})
      req = build_request(:describe_security_groups, params)
      req.send_request(options)
    end

    # Describes the specified attribute of the specified snapshot. You can
    # specify only one attribute at a time.
    #
    # For more information about EBS snapshots, see [Amazon EBS
    # Snapshots][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html
    #
    # @option params [required, String] :attribute
    #   The snapshot attribute you would like to view.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the EBS snapshot.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeSnapshotAttributeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotAttributeResult#create_volume_permissions #create_volume_permissions} => Array&lt;Types::CreateVolumePermission&gt;
    #   * {Types::DescribeSnapshotAttributeResult#product_codes #product_codes} => Array&lt;Types::ProductCode&gt;
    #   * {Types::DescribeSnapshotAttributeResult#snapshot_id #snapshot_id} => String
    #
    #
    # @example Example: To describe snapshot attributes
    #
    #   # This example describes the ``createVolumePermission`` attribute on a snapshot with the snapshot ID of ``snap-066877671789bd71b``.
    #
    #   resp = client.describe_snapshot_attribute({
    #     attribute: "createVolumePermission", 
    #     snapshot_id: "snap-066877671789bd71b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     create_volume_permissions: [
    #     ], 
    #     snapshot_id: "snap-066877671789bd71b", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshot_attribute({
    #     attribute: "productCodes", # required, accepts productCodes, createVolumePermission
    #     snapshot_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.create_volume_permissions #=> Array
    #   resp.create_volume_permissions[0].group #=> String, one of "all"
    #   resp.create_volume_permissions[0].user_id #=> String
    #   resp.product_codes #=> Array
    #   resp.product_codes[0].product_code_id #=> String
    #   resp.product_codes[0].product_code_type #=> String, one of "devpay", "marketplace"
    #   resp.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSnapshotAttribute AWS API Documentation
    #
    # @overload describe_snapshot_attribute(params = {})
    # @param [Hash] params ({})
    def describe_snapshot_attribute(params = {}, options = {})
      req = build_request(:describe_snapshot_attribute, params)
      req.send_request(options)
    end

    # Describes one or more of the EBS snapshots available to you. Available
    # snapshots include public snapshots available for any AWS account to
    # launch, private snapshots that you own, and private snapshots owned by
    # another AWS account but for which you've been given explicit create
    # volume permissions.
    #
    # The create volume permissions fall into the following categories:
    #
    # * *public*\: The owner of the snapshot granted create volume
    #   permissions for the snapshot to the `all` group. All AWS accounts
    #   have create volume permissions for these snapshots.
    #
    # * *explicit*\: The owner of the snapshot granted create volume
    #   permissions to a specific AWS account.
    #
    # * *implicit*\: An AWS account has implicit create volume permissions
    #   for all snapshots it owns.
    #
    # The list of snapshots returned can be modified by specifying snapshot
    # IDs, snapshot owners, or AWS accounts with create volume permissions.
    # If no options are specified, Amazon EC2 returns all snapshots for
    # which you have create volume permissions.
    #
    # If you specify one or more snapshot IDs, only snapshots that have the
    # specified IDs are returned. If you specify an invalid snapshot ID, an
    # error is returned. If you specify a snapshot ID for which you do not
    # have access, it is not included in the returned results.
    #
    # If you specify one or more snapshot owners using the `OwnerIds`
    # option, only snapshots from the specified owners and for which you
    # have access are returned. The results can include the AWS account IDs
    # of the specified owners, `amazon` for snapshots owned by Amazon, or
    # `self` for snapshots that you own.
    #
    # If you specify a list of restorable users, only snapshots with create
    # snapshot permissions for those users are returned. You can specify AWS
    # account IDs (if you own the snapshots), `self` for snapshots for which
    # you own or have explicit permissions, or `all` for public snapshots.
    #
    # If you are describing a long list of snapshots, you can paginate the
    # output to make the list more manageable. The `MaxResults` parameter
    # sets the maximum number of results returned in a single page. If the
    # list of results exceeds your `MaxResults` value, then that number of
    # results is returned along with a `NextToken` value that can be passed
    # to a subsequent `DescribeSnapshots` request to retrieve the remaining
    # results.
    #
    # For more information about EBS snapshots, see [Amazon EBS
    # Snapshots][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `description` - A description of the snapshot.
    #
    #   * `owner-alias` - Value from an Amazon-maintained list (`amazon` \|
    #     `aws-marketplace` \| `microsoft`) of snapshot owners. Not to be
    #     confused with the user-configured AWS account alias, which is set
    #     from the IAM console.
    #
    #   * `owner-id` - The ID of the AWS account that owns the snapshot.
    #
    #   * `progress` - The progress of the snapshot, as a percentage (for
    #     example, 80%).
    #
    #   * `snapshot-id` - The snapshot ID.
    #
    #   * `start-time` - The time stamp when the snapshot was initiated.
    #
    #   * `status` - The status of the snapshot (`pending` \| `completed` \|
    #     `error`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `volume-id` - The ID of the volume the snapshot is for.
    #
    #   * `volume-size` - The size of the volume, in GiB.
    #
    # @option params [Integer] :max_results
    #   The maximum number of snapshot results returned by `DescribeSnapshots`
    #   in paginated output. When this parameter is used, `DescribeSnapshots`
    #   only returns `MaxResults` results in a single page along with a
    #   `NextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `DescribeSnapshots` request
    #   with the returned `NextToken` value. This value can be between 5 and
    #   1000; if `MaxResults` is given a value larger than 1000, only 1000
    #   results are returned. If this parameter is not used, then
    #   `DescribeSnapshots` returns all results. You cannot specify this
    #   parameter and the snapshot IDs parameter in the same request.
    #
    # @option params [String] :next_token
    #   The `NextToken` value returned from a previous paginated
    #   `DescribeSnapshots` request where `MaxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `NextToken`
    #   value. This value is `null` when there are no more results to return.
    #
    # @option params [Array<String>] :owner_ids
    #   Returns the snapshots owned by the specified owner. Multiple owners
    #   can be specified.
    #
    # @option params [Array<String>] :restorable_by_user_ids
    #   One or more AWS accounts IDs that can create volumes from the
    #   snapshot.
    #
    # @option params [Array<String>] :snapshot_ids
    #   One or more snapshot IDs.
    #
    #   Default: Describes snapshots for which you have launch permissions.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotsResult#snapshots #snapshots} => Array&lt;Types::Snapshot&gt;
    #   * {Types::DescribeSnapshotsResult#next_token #next_token} => String
    #
    #
    # @example Example: To describe a snapshot
    #
    #   # This example describes a snapshot with the snapshot ID of ``snap-1234567890abcdef0``.
    #
    #   resp = client.describe_snapshots({
    #     snapshot_ids: [
    #       "snap-1234567890abcdef0", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "", 
    #     snapshots: [
    #       {
    #         description: "This is my snapshot.", 
    #         owner_id: "012345678910", 
    #         progress: "100%", 
    #         snapshot_id: "snap-1234567890abcdef0", 
    #         start_time: Time.parse("2014-02-28T21:28:32.000Z"), 
    #         state: "completed", 
    #         volume_id: "vol-049df61146c4d7901", 
    #         volume_size: 8, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To describe snapshots using filters
    #
    #   # This example describes all snapshots owned by the ID 012345678910 that are in the ``pending`` status.
    #
    #   resp = client.describe_snapshots({
    #     filters: [
    #       {
    #         name: "status", 
    #         values: [
    #           "pending", 
    #         ], 
    #       }, 
    #     ], 
    #     owner_ids: [
    #       "012345678910", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "", 
    #     snapshots: [
    #       {
    #         description: "This is my copied snapshot.", 
    #         owner_id: "012345678910", 
    #         progress: "87%", 
    #         snapshot_id: "snap-066877671789bd71b", 
    #         start_time: Time.parse("2014-02-28T21:37:27.000Z"), 
    #         state: "pending", 
    #         volume_id: "vol-1234567890abcdef0", 
    #         volume_size: 8, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #     owner_ids: ["String"],
    #     restorable_by_user_ids: ["String"],
    #     snapshot_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].data_encryption_key_id #=> String
    #   resp.snapshots[0].description #=> String
    #   resp.snapshots[0].encrypted #=> Boolean
    #   resp.snapshots[0].kms_key_id #=> String
    #   resp.snapshots[0].owner_id #=> String
    #   resp.snapshots[0].progress #=> String
    #   resp.snapshots[0].snapshot_id #=> String
    #   resp.snapshots[0].start_time #=> Time
    #   resp.snapshots[0].state #=> String, one of "pending", "completed", "error"
    #   resp.snapshots[0].state_message #=> String
    #   resp.snapshots[0].volume_id #=> String
    #   resp.snapshots[0].volume_size #=> Integer
    #   resp.snapshots[0].owner_alias #=> String
    #   resp.snapshots[0].tags #=> Array
    #   resp.snapshots[0].tags[0].key #=> String
    #   resp.snapshots[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSnapshots AWS API Documentation
    #
    # @overload describe_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_snapshots(params = {}, options = {})
      req = build_request(:describe_snapshots, params)
      req.send_request(options)
    end

    # Describes the data feed for Spot instances. For more information, see
    # [Spot Instance Data Feed][1] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeSpotDatafeedSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpotDatafeedSubscriptionResult#spot_datafeed_subscription #spot_datafeed_subscription} => Types::SpotDatafeedSubscription
    #
    #
    # @example Example: To describe the datafeed for your AWS account
    #
    #   # This example describes the Spot Instance datafeed subscription for your AWS account.
    #
    #   resp = client.describe_spot_datafeed_subscription({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_datafeed_subscription: {
    #       bucket: "my-s3-bucket", 
    #       owner_id: "123456789012", 
    #       prefix: "spotdata", 
    #       state: "Active", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_spot_datafeed_subscription({
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.spot_datafeed_subscription.bucket #=> String
    #   resp.spot_datafeed_subscription.fault.code #=> String
    #   resp.spot_datafeed_subscription.fault.message #=> String
    #   resp.spot_datafeed_subscription.owner_id #=> String
    #   resp.spot_datafeed_subscription.prefix #=> String
    #   resp.spot_datafeed_subscription.state #=> String, one of "Active", "Inactive"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotDatafeedSubscription AWS API Documentation
    #
    # @overload describe_spot_datafeed_subscription(params = {})
    # @param [Hash] params ({})
    def describe_spot_datafeed_subscription(params = {}, options = {})
      req = build_request(:describe_spot_datafeed_subscription, params)
      req.send_request(options)
    end

    # Describes the running instances for the specified Spot fleet.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Specify a
    #   value between 1 and 1000. The default value is 1000. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [required, String] :spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #
    # @return [Types::DescribeSpotFleetInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpotFleetInstancesResponse#active_instances #active_instances} => Array&lt;Types::ActiveInstance&gt;
    #   * {Types::DescribeSpotFleetInstancesResponse#next_token #next_token} => String
    #   * {Types::DescribeSpotFleetInstancesResponse#spot_fleet_request_id #spot_fleet_request_id} => String
    #
    #
    # @example Example: To describe the Spot Instances associated with a Spot fleet
    #
    #   # This example lists the Spot Instances associated with the specified Spot fleet.
    #
    #   resp = client.describe_spot_fleet_instances({
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     active_instances: [
    #       {
    #         instance_id: "i-1234567890abcdef0", 
    #         instance_type: "m3.medium", 
    #         spot_instance_request_id: "sir-08b93456", 
    #       }, 
    #     ], 
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_spot_fleet_instances({
    #     dry_run: false,
    #     max_results: 1,
    #     next_token: "String",
    #     spot_fleet_request_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.active_instances #=> Array
    #   resp.active_instances[0].instance_id #=> String
    #   resp.active_instances[0].instance_type #=> String
    #   resp.active_instances[0].spot_instance_request_id #=> String
    #   resp.active_instances[0].instance_health #=> String, one of "healthy", "unhealthy"
    #   resp.next_token #=> String
    #   resp.spot_fleet_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetInstances AWS API Documentation
    #
    # @overload describe_spot_fleet_instances(params = {})
    # @param [Hash] params ({})
    def describe_spot_fleet_instances(params = {}, options = {})
      req = build_request(:describe_spot_fleet_instances, params)
      req.send_request(options)
    end

    # Describes the events for the specified Spot fleet request during the
    # specified time.
    #
    # Spot fleet events are delayed by up to 30 seconds before they can be
    # described. This ensures that you can query by the last evaluated time
    # and not miss a recorded event.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :event_type
    #   The type of events to describe. By default, all events are described.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Specify a
    #   value between 1 and 1000. The default value is 1000. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [required, String] :spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The starting date and time for the events, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #
    # @return [Types::DescribeSpotFleetRequestHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpotFleetRequestHistoryResponse#history_records #history_records} => Array&lt;Types::HistoryRecord&gt;
    #   * {Types::DescribeSpotFleetRequestHistoryResponse#last_evaluated_time #last_evaluated_time} => Time
    #   * {Types::DescribeSpotFleetRequestHistoryResponse#next_token #next_token} => String
    #   * {Types::DescribeSpotFleetRequestHistoryResponse#spot_fleet_request_id #spot_fleet_request_id} => String
    #   * {Types::DescribeSpotFleetRequestHistoryResponse#start_time #start_time} => Time
    #
    #
    # @example Example: To describe Spot fleet history
    #
    #   # This example returns the history for the specified Spot fleet starting at the specified time.
    #
    #   resp = client.describe_spot_fleet_request_history({
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #     start_time: Time.parse("2015-05-26T00:00:00Z"), 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     history_records: [
    #       {
    #         event_information: {
    #           event_sub_type: "submitted", 
    #         }, 
    #         event_type: "fleetRequestChange", 
    #         timestamp: Time.parse("2015-05-26T23:17:20.697Z"), 
    #       }, 
    #       {
    #         event_information: {
    #           event_sub_type: "active", 
    #         }, 
    #         event_type: "fleetRequestChange", 
    #         timestamp: Time.parse("2015-05-26T23:17:20.873Z"), 
    #       }, 
    #       {
    #         event_information: {
    #           event_sub_type: "launched", 
    #           instance_id: "i-1234567890abcdef0", 
    #         }, 
    #         event_type: "instanceChange", 
    #         timestamp: Time.parse("2015-05-26T23:21:21.712Z"), 
    #       }, 
    #       {
    #         event_information: {
    #           event_sub_type: "launched", 
    #           instance_id: "i-1234567890abcdef1", 
    #         }, 
    #         event_type: "instanceChange", 
    #         timestamp: Time.parse("2015-05-26T23:21:21.816Z"), 
    #       }, 
    #     ], 
    #     next_token: "CpHNsscimcV5oH7bSbub03CI2Qms5+ypNpNm+53MNlR0YcXAkp0xFlfKf91yVxSExmbtma3awYxMFzNA663ZskT0AHtJ6TCb2Z8bQC2EnZgyELbymtWPfpZ1ZbauVg+P+TfGlWxWWB/Vr5dk5d4LfdgA/DRAHUrYgxzrEXAMPLE=", 
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #     start_time: Time.parse("2015-05-26T00:00:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_spot_fleet_request_history({
    #     dry_run: false,
    #     event_type: "instanceChange", # accepts instanceChange, fleetRequestChange, error
    #     max_results: 1,
    #     next_token: "String",
    #     spot_fleet_request_id: "String", # required
    #     start_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.history_records #=> Array
    #   resp.history_records[0].event_information.event_description #=> String
    #   resp.history_records[0].event_information.event_sub_type #=> String
    #   resp.history_records[0].event_information.instance_id #=> String
    #   resp.history_records[0].event_type #=> String, one of "instanceChange", "fleetRequestChange", "error"
    #   resp.history_records[0].timestamp #=> Time
    #   resp.last_evaluated_time #=> Time
    #   resp.next_token #=> String
    #   resp.spot_fleet_request_id #=> String
    #   resp.start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestHistory AWS API Documentation
    #
    # @overload describe_spot_fleet_request_history(params = {})
    # @param [Hash] params ({})
    def describe_spot_fleet_request_history(params = {}, options = {})
      req = build_request(:describe_spot_fleet_request_history, params)
      req.send_request(options)
    end

    # Describes your Spot fleet requests.
    #
    # Spot fleet requests are deleted 48 hours after they are canceled and
    # their instances are terminated.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Specify a
    #   value between 1 and 1000. The default value is 1000. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Array<String>] :spot_fleet_request_ids
    #   The IDs of the Spot fleet requests.
    #
    # @return [Types::DescribeSpotFleetRequestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpotFleetRequestsResponse#next_token #next_token} => String
    #   * {Types::DescribeSpotFleetRequestsResponse#spot_fleet_request_configs #spot_fleet_request_configs} => Array&lt;Types::SpotFleetRequestConfig&gt;
    #
    #
    # @example Example: To describe a Spot fleet request
    #
    #   # This example describes the specified Spot fleet request.
    #
    #   resp = client.describe_spot_fleet_requests({
    #     spot_fleet_request_ids: [
    #       "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_fleet_request_configs: [
    #       {
    #         spot_fleet_request_config: {
    #           iam_fleet_role: "arn:aws:iam::123456789012:role/my-spot-fleet-role", 
    #           launch_specifications: [
    #             {
    #               ebs_optimized: false, 
    #               image_id: "ami-1a2b3c4d", 
    #               instance_type: "cc2.8xlarge", 
    #               network_interfaces: [
    #                 {
    #                   associate_public_ip_address: true, 
    #                   delete_on_termination: false, 
    #                   device_index: 0, 
    #                   secondary_private_ip_address_count: 0, 
    #                   subnet_id: "subnet-a61dafcf", 
    #                 }, 
    #               ], 
    #             }, 
    #             {
    #               ebs_optimized: false, 
    #               image_id: "ami-1a2b3c4d", 
    #               instance_type: "r3.8xlarge", 
    #               network_interfaces: [
    #                 {
    #                   associate_public_ip_address: true, 
    #                   delete_on_termination: false, 
    #                   device_index: 0, 
    #                   secondary_private_ip_address_count: 0, 
    #                   subnet_id: "subnet-a61dafcf", 
    #                 }, 
    #               ], 
    #             }, 
    #           ], 
    #           spot_price: "0.05", 
    #           target_capacity: 20, 
    #         }, 
    #         spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #         spot_fleet_request_state: "active", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_spot_fleet_requests({
    #     dry_run: false,
    #     max_results: 1,
    #     next_token: "String",
    #     spot_fleet_request_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.spot_fleet_request_configs #=> Array
    #   resp.spot_fleet_request_configs[0].activity_status #=> String, one of "error", "pending_fulfillment", "pending_termination", "fulfilled"
    #   resp.spot_fleet_request_configs[0].create_time #=> Time
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.allocation_strategy #=> String, one of "lowestPrice", "diversified"
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.client_token #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.excess_capacity_termination_policy #=> String, one of "noTermination", "default"
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.fulfilled_capacity #=> Float
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.iam_fleet_role #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].security_groups #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].security_groups[0].group_name #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].security_groups[0].group_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].addressing_type #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].device_name #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].virtual_name #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].ebs.iops #=> Integer
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].block_device_mappings[0].no_device #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].ebs_optimized #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].iam_instance_profile.arn #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].iam_instance_profile.name #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].image_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].kernel_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].key_name #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].monitoring.enabled #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].associate_public_ip_address #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].delete_on_termination #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].description #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].device_index #=> Integer
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].groups #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].groups[0] #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].ipv_6_address_count #=> Integer
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].ipv_6_addresses #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].ipv_6_addresses[0].ipv_6_address #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].network_interface_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].private_ip_address #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].private_ip_addresses #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].private_ip_addresses[0].primary #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].secondary_private_ip_address_count #=> Integer
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].network_interfaces[0].subnet_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].placement.availability_zone #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].placement.group_name #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].placement.tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].ramdisk_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].spot_price #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].subnet_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].user_data #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].weighted_capacity #=> Float
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].tag_specifications #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].tag_specifications[0].resource_type #=> String, one of "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection", "vpn-gateway"
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].tag_specifications[0].tags #=> Array
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].tag_specifications[0].tags[0].key #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.launch_specifications[0].tag_specifications[0].tags[0].value #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.spot_price #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.target_capacity #=> Integer
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.terminate_instances_with_expiration #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.type #=> String, one of "request", "maintain"
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.valid_from #=> Time
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.valid_until #=> Time
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_config.replace_unhealthy_instances #=> Boolean
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_id #=> String
    #   resp.spot_fleet_request_configs[0].spot_fleet_request_state #=> String, one of "submitted", "active", "cancelled", "failed", "cancelled_running", "cancelled_terminating", "modifying"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequests AWS API Documentation
    #
    # @overload describe_spot_fleet_requests(params = {})
    # @param [Hash] params ({})
    def describe_spot_fleet_requests(params = {}, options = {})
      req = build_request(:describe_spot_fleet_requests, params)
      req.send_request(options)
    end

    # Describes the Spot instance requests that belong to your account. Spot
    # instances are instances that Amazon EC2 launches when the bid price
    # that you specify exceeds the current Spot price. Amazon EC2
    # periodically sets the Spot price based on available Spot instance
    # capacity and current Spot instance requests. For more information, see
    # [Spot Instance Requests][1] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    # You can use `DescribeSpotInstanceRequests` to find a running Spot
    # instance by examining the response. If the status of the Spot instance
    # is `fulfilled`, the instance ID appears in the response and contains
    # the identifier of the instance. Alternatively, you can use
    # DescribeInstances with a filter to look for instances where the
    # instance lifecycle is `spot`.
    #
    # Spot instance requests are deleted 4 hours after they are canceled and
    # their instances are terminated.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone-group` - The Availability Zone group.
    #
    #   * `create-time` - The time stamp when the Spot instance request was
    #     created.
    #
    #   * `fault-code` - The fault code related to the request.
    #
    #   * `fault-message` - The fault message related to the request.
    #
    #   * `instance-id` - The ID of the instance that fulfilled the request.
    #
    #   * `launch-group` - The Spot instance launch group.
    #
    #   * `launch.block-device-mapping.delete-on-termination` - Indicates
    #     whether the Amazon EBS volume is deleted on instance termination.
    #
    #   * `launch.block-device-mapping.device-name` - The device name for the
    #     Amazon EBS volume (for example, `/dev/sdh`).
    #
    #   * `launch.block-device-mapping.snapshot-id` - The ID of the snapshot
    #     used for the Amazon EBS volume.
    #
    #   * `launch.block-device-mapping.volume-size` - The size of the Amazon
    #     EBS volume, in GiB.
    #
    #   * `launch.block-device-mapping.volume-type` - The type of the Amazon
    #     EBS volume: `gp2` for General Purpose SSD, `io1` for Provisioned
    #     IOPS SSD, `st1` for Throughput Optimized HDD, `sc1`for Cold HDD, or
    #     `standard` for Magnetic.
    #
    #   * `launch.group-id` - The security group for the instance.
    #
    #   * `launch.image-id` - The ID of the AMI.
    #
    #   * `launch.instance-type` - The type of instance (for example,
    #     `m3.medium`).
    #
    #   * `launch.kernel-id` - The kernel ID.
    #
    #   * `launch.key-name` - The name of the key pair the instance launched
    #     with.
    #
    #   * `launch.monitoring-enabled` - Whether monitoring is enabled for the
    #     Spot instance.
    #
    #   * `launch.ramdisk-id` - The RAM disk ID.
    #
    #   * `network-interface.network-interface-id` - The ID of the network
    #     interface.
    #
    #   * `network-interface.device-index` - The index of the device for the
    #     network interface attachment on the instance.
    #
    #   * `network-interface.subnet-id` - The ID of the subnet for the
    #     instance.
    #
    #   * `network-interface.description` - A description of the network
    #     interface.
    #
    #   * `network-interface.private-ip-address` - The primary private IP
    #     address of the network interface.
    #
    #   * `network-interface.delete-on-termination` - Indicates whether the
    #     network interface is deleted when the instance is terminated.
    #
    #   * `network-interface.group-id` - The ID of the security group
    #     associated with the network interface.
    #
    #   * `network-interface.group-name` - The name of the security group
    #     associated with the network interface.
    #
    #   * `network-interface.addresses.primary` - Indicates whether the IP
    #     address is the primary private IP address.
    #
    #   * `product-description` - The product description associated with the
    #     instance (`Linux/UNIX` \| `Windows`).
    #
    #   * `spot-instance-request-id` - The Spot instance request ID.
    #
    #   * `spot-price` - The maximum hourly price for any Spot instance
    #     launched to fulfill the request.
    #
    #   * `state` - The state of the Spot instance request (`open` \| `active`
    #     \| `closed` \| `cancelled` \| `failed`). Spot bid status information
    #     can help you track your Amazon EC2 Spot instance requests. For more
    #     information, see [Spot Bid Status][1] in the Amazon Elastic Compute
    #     Cloud User Guide.
    #
    #   * `status-code` - The short code describing the most recent evaluation
    #     of your Spot instance request.
    #
    #   * `status-message` - The message explaining the status of the Spot
    #     instance request.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `type` - The type of Spot instance request (`one-time` \|
    #     `persistent`).
    #
    #   * `launched-availability-zone` - The Availability Zone in which the
    #     bid is launched.
    #
    #   * `valid-from` - The start date of the request.
    #
    #   * `valid-until` - The end date of the request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :spot_instance_request_ids
    #   One or more Spot instance request IDs.
    #
    # @return [Types::DescribeSpotInstanceRequestsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpotInstanceRequestsResult#spot_instance_requests #spot_instance_requests} => Array&lt;Types::SpotInstanceRequest&gt;
    #
    #
    # @example Example: To describe a Spot Instance request
    #
    #   # This example describes the specified Spot Instance request.
    #
    #   resp = client.describe_spot_instance_requests({
    #     spot_instance_request_ids: [
    #       "sir-08b93456", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_instance_requests: [
    #       {
    #         create_time: Time.parse("2014-04-30T18:14:55.000Z"), 
    #         instance_id: "i-1234567890abcdef0", 
    #         launch_specification: {
    #           block_device_mappings: [
    #             {
    #               device_name: "/dev/sda1", 
    #               ebs: {
    #                 delete_on_termination: true, 
    #                 volume_size: 8, 
    #                 volume_type: "standard", 
    #               }, 
    #             }, 
    #           ], 
    #           ebs_optimized: false, 
    #           image_id: "ami-7aba833f", 
    #           instance_type: "m1.small", 
    #           key_name: "my-key-pair", 
    #           security_groups: [
    #             {
    #               group_id: "sg-e38f24a7", 
    #               group_name: "my-security-group", 
    #             }, 
    #           ], 
    #         }, 
    #         launched_availability_zone: "us-west-1b", 
    #         product_description: "Linux/UNIX", 
    #         spot_instance_request_id: "sir-08b93456", 
    #         spot_price: "0.010000", 
    #         state: "active", 
    #         status: {
    #           code: "fulfilled", 
    #           message: "Your Spot request is fulfilled.", 
    #           update_time: Time.parse("2014-04-30T18:16:21.000Z"), 
    #         }, 
    #         type: "one-time", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_spot_instance_requests({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     spot_instance_request_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.spot_instance_requests #=> Array
    #   resp.spot_instance_requests[0].actual_block_hourly_price #=> String
    #   resp.spot_instance_requests[0].availability_zone_group #=> String
    #   resp.spot_instance_requests[0].block_duration_minutes #=> Integer
    #   resp.spot_instance_requests[0].create_time #=> Time
    #   resp.spot_instance_requests[0].fault.code #=> String
    #   resp.spot_instance_requests[0].fault.message #=> String
    #   resp.spot_instance_requests[0].instance_id #=> String
    #   resp.spot_instance_requests[0].launch_group #=> String
    #   resp.spot_instance_requests[0].launch_specification.user_data #=> String
    #   resp.spot_instance_requests[0].launch_specification.security_groups #=> Array
    #   resp.spot_instance_requests[0].launch_specification.security_groups[0].group_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.security_groups[0].group_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.addressing_type #=> String
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings #=> Array
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].device_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].virtual_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].no_device #=> String
    #   resp.spot_instance_requests[0].launch_specification.ebs_optimized #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.iam_instance_profile.arn #=> String
    #   resp.spot_instance_requests[0].launch_specification.iam_instance_profile.name #=> String
    #   resp.spot_instance_requests[0].launch_specification.image_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.spot_instance_requests[0].launch_specification.kernel_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.key_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces #=> Array
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].associate_public_ip_address #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].delete_on_termination #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].description #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].device_index #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].groups #=> Array
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].groups[0] #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].ipv_6_address_count #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].ipv_6_addresses #=> Array
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].ipv_6_addresses[0].ipv_6_address #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].network_interface_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].private_ip_address #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].private_ip_addresses #=> Array
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].private_ip_addresses[0].primary #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].secondary_private_ip_address_count #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].subnet_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.placement.availability_zone #=> String
    #   resp.spot_instance_requests[0].launch_specification.placement.group_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.placement.tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.spot_instance_requests[0].launch_specification.ramdisk_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.subnet_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.monitoring.enabled #=> Boolean
    #   resp.spot_instance_requests[0].launched_availability_zone #=> String
    #   resp.spot_instance_requests[0].product_description #=> String, one of "Linux/UNIX", "Linux/UNIX (Amazon VPC)", "Windows", "Windows (Amazon VPC)"
    #   resp.spot_instance_requests[0].spot_instance_request_id #=> String
    #   resp.spot_instance_requests[0].spot_price #=> String
    #   resp.spot_instance_requests[0].state #=> String, one of "open", "active", "closed", "cancelled", "failed"
    #   resp.spot_instance_requests[0].status.code #=> String
    #   resp.spot_instance_requests[0].status.message #=> String
    #   resp.spot_instance_requests[0].status.update_time #=> Time
    #   resp.spot_instance_requests[0].tags #=> Array
    #   resp.spot_instance_requests[0].tags[0].key #=> String
    #   resp.spot_instance_requests[0].tags[0].value #=> String
    #   resp.spot_instance_requests[0].type #=> String, one of "one-time", "persistent"
    #   resp.spot_instance_requests[0].valid_from #=> Time
    #   resp.spot_instance_requests[0].valid_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotInstanceRequests AWS API Documentation
    #
    # @overload describe_spot_instance_requests(params = {})
    # @param [Hash] params ({})
    def describe_spot_instance_requests(params = {}, options = {})
      req = build_request(:describe_spot_instance_requests, params)
      req.send_request(options)
    end

    # Describes the Spot price history. For more information, see [Spot
    # Instance Pricing History][1] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    # When you specify a start and end time, this operation returns the
    # prices of the instance types within the time range that you specified
    # and the time when the price changed. The price is valid within the
    # time period that you specified; the response merely indicates the last
    # time that the price changed.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone for which prices should
    #     be returned.
    #
    #   * `instance-type` - The type of instance (for example, `m3.medium`).
    #
    #   * `product-description` - The product description for the Spot price
    #     (`Linux/UNIX` \| `SUSE Linux` \| `Windows` \| `Linux/UNIX (Amazon
    #     VPC)` \| `SUSE Linux (Amazon VPC)` \| `Windows (Amazon VPC)`).
    #
    #   * `spot-price` - The Spot price. The value must match exactly (or use
    #     wildcards; greater than or less than comparison is not supported).
    #
    #   * `timestamp` - The timestamp of the Spot price history, in UTC format
    #     (for example, *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z). You can use
    #     wildcards (* and ?). Greater than or less than comparison is not
    #     supported.
    #
    # @option params [String] :availability_zone
    #   Filters the results by the specified Availability Zone.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The date and time, up to the current date, from which to stop
    #   retrieving the price history data, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #
    # @option params [Array<String>] :instance_types
    #   Filters the results by the specified instance types. Note that T2 and
    #   HS1 instance types are not supported.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Specify a
    #   value between 1 and 1000. The default value is 1000. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Array<String>] :product_descriptions
    #   Filters the results by the specified basic product descriptions.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time, up to the past 90 days, from which to start
    #   retrieving the price history data, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #
    # @return [Types::DescribeSpotPriceHistoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpotPriceHistoryResult#next_token #next_token} => String
    #   * {Types::DescribeSpotPriceHistoryResult#spot_price_history #spot_price_history} => Array&lt;Types::SpotPrice&gt;
    #
    #
    # @example Example: To describe Spot price history for Linux/UNIX (Amazon VPC)
    #
    #   # This example returns the Spot Price history for m1.xlarge, Linux/UNIX (Amazon VPC) instances for a particular day in January.
    #
    #   resp = client.describe_spot_price_history({
    #     end_time: Time.parse("2014-01-06T08:09:10"), 
    #     instance_types: [
    #       "m1.xlarge", 
    #     ], 
    #     product_descriptions: [
    #       "Linux/UNIX (Amazon VPC)", 
    #     ], 
    #     start_time: Time.parse("2014-01-06T07:08:09"), 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_price_history: [
    #       {
    #         availability_zone: "us-west-1a", 
    #         instance_type: "m1.xlarge", 
    #         product_description: "Linux/UNIX (Amazon VPC)", 
    #         spot_price: "0.080000", 
    #         timestamp: Time.parse("2014-01-06T04:32:53.000Z"), 
    #       }, 
    #       {
    #         availability_zone: "us-west-1c", 
    #         instance_type: "m1.xlarge", 
    #         product_description: "Linux/UNIX (Amazon VPC)", 
    #         spot_price: "0.080000", 
    #         timestamp: Time.parse("2014-01-05T11:28:26.000Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_spot_price_history({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     availability_zone: "String",
    #     dry_run: false,
    #     end_time: Time.now,
    #     instance_types: ["t1.micro"], # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #     max_results: 1,
    #     next_token: "String",
    #     product_descriptions: ["String"],
    #     start_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.spot_price_history #=> Array
    #   resp.spot_price_history[0].availability_zone #=> String
    #   resp.spot_price_history[0].instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.spot_price_history[0].product_description #=> String, one of "Linux/UNIX", "Linux/UNIX (Amazon VPC)", "Windows", "Windows (Amazon VPC)"
    #   resp.spot_price_history[0].spot_price #=> String
    #   resp.spot_price_history[0].timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotPriceHistory AWS API Documentation
    #
    # @overload describe_spot_price_history(params = {})
    # @param [Hash] params ({})
    def describe_spot_price_history(params = {}, options = {})
      req = build_request(:describe_spot_price_history, params)
      req.send_request(options)
    end

    # \[EC2-VPC only\] Describes the stale security group rules for security
    # groups in a specified VPC. Rules are stale when they reference a
    # deleted security group in a peer VPC, or a security group in a peer
    # VPC for which the VPC peering connection has been deleted.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   DryRunOperation. Otherwise, it is UnauthorizedOperation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::DescribeStaleSecurityGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStaleSecurityGroupsResult#next_token #next_token} => String
    #   * {Types::DescribeStaleSecurityGroupsResult#stale_security_group_set #stale_security_group_set} => Array&lt;Types::StaleSecurityGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stale_security_groups({
    #     dry_run: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.stale_security_group_set #=> Array
    #   resp.stale_security_group_set[0].description #=> String
    #   resp.stale_security_group_set[0].group_id #=> String
    #   resp.stale_security_group_set[0].group_name #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions #=> Array
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].from_port #=> Integer
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].ip_protocol #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].ip_ranges #=> Array
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].ip_ranges[0] #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].prefix_list_ids #=> Array
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].prefix_list_ids[0] #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].to_port #=> Integer
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].user_id_group_pairs #=> Array
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].user_id_group_pairs[0].group_id #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].user_id_group_pairs[0].group_name #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].user_id_group_pairs[0].peering_status #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].user_id_group_pairs[0].user_id #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].user_id_group_pairs[0].vpc_id #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions[0].user_id_group_pairs[0].vpc_peering_connection_id #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress #=> Array
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].from_port #=> Integer
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].ip_protocol #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].ip_ranges #=> Array
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].ip_ranges[0] #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].prefix_list_ids #=> Array
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].prefix_list_ids[0] #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].to_port #=> Integer
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].user_id_group_pairs #=> Array
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].user_id_group_pairs[0].group_id #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].user_id_group_pairs[0].group_name #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].user_id_group_pairs[0].peering_status #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].user_id_group_pairs[0].user_id #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].user_id_group_pairs[0].vpc_id #=> String
    #   resp.stale_security_group_set[0].stale_ip_permissions_egress[0].user_id_group_pairs[0].vpc_peering_connection_id #=> String
    #   resp.stale_security_group_set[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeStaleSecurityGroups AWS API Documentation
    #
    # @overload describe_stale_security_groups(params = {})
    # @param [Hash] params ({})
    def describe_stale_security_groups(params = {}, options = {})
      req = build_request(:describe_stale_security_groups, params)
      req.send_request(options)
    end

    # Describes one or more of your subnets.
    #
    # For more information about subnets, see [Your VPC and Subnets][1] in
    # the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `availabilityZone` - The Availability Zone for the subnet. You can
    #     also use `availability-zone` as the filter name.
    #
    #   * `available-ip-address-count` - The number of IPv4 addresses in the
    #     subnet that are available.
    #
    #   * `cidrBlock` - The IPv4 CIDR block of the subnet. The CIDR block you
    #     specify must exactly match the subnet's CIDR block for information
    #     to be returned for the subnet. You can also use `cidr` or
    #     `cidr-block` as the filter names.
    #
    #   * `defaultForAz` - Indicates whether this is the default subnet for
    #     the Availability Zone. You can also use `default-for-az` as the
    #     filter name.
    #
    #   * `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block
    #     associated with the subnet.
    #
    #   * `ipv6-cidr-block-association.association-id` - An association ID for
    #     an IPv6 CIDR block associated with the subnet.
    #
    #   * `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR
    #     block associated with the subnet.
    #
    #   * `state` - The state of the subnet (`pending` \| `available`).
    #
    #   * `subnet-id` - The ID of the subnet.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC for the subnet.
    #
    # @option params [Array<String>] :subnet_ids
    #   One or more subnet IDs.
    #
    #   Default: Describes all your subnets.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeSubnetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubnetsResult#subnets #subnets} => Array&lt;Types::Subnet&gt;
    #
    #
    # @example Example: To describe the subnets for a VPC
    #
    #   # This example describes the subnets for the specified VPC.
    #
    #   resp = client.describe_subnets({
    #     filters: [
    #       {
    #         name: "vpc-id", 
    #         values: [
    #           "vpc-a01106c2", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     subnets: [
    #       {
    #         availability_zone: "us-east-1c", 
    #         available_ip_address_count: 251, 
    #         cidr_block: "10.0.1.0/24", 
    #         default_for_az: false, 
    #         map_public_ip_on_launch: false, 
    #         state: "available", 
    #         subnet_id: "subnet-9d4a7b6c", 
    #         vpc_id: "vpc-a01106c2", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subnets({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     subnet_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.subnets #=> Array
    #   resp.subnets[0].availability_zone #=> String
    #   resp.subnets[0].available_ip_address_count #=> Integer
    #   resp.subnets[0].cidr_block #=> String
    #   resp.subnets[0].default_for_az #=> Boolean
    #   resp.subnets[0].map_public_ip_on_launch #=> Boolean
    #   resp.subnets[0].state #=> String, one of "pending", "available"
    #   resp.subnets[0].subnet_id #=> String
    #   resp.subnets[0].vpc_id #=> String
    #   resp.subnets[0].assign_ipv_6_address_on_creation #=> Boolean
    #   resp.subnets[0].ipv_6_cidr_block_association_set #=> Array
    #   resp.subnets[0].ipv_6_cidr_block_association_set[0].association_id #=> String
    #   resp.subnets[0].ipv_6_cidr_block_association_set[0].ipv_6_cidr_block #=> String
    #   resp.subnets[0].ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.subnets[0].ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.status_message #=> String
    #   resp.subnets[0].tags #=> Array
    #   resp.subnets[0].tags[0].key #=> String
    #   resp.subnets[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSubnets AWS API Documentation
    #
    # @overload describe_subnets(params = {})
    # @param [Hash] params ({})
    def describe_subnets(params = {}, options = {})
      req = build_request(:describe_subnets, params)
      req.send_request(options)
    end

    # Describes one or more of the tags for your EC2 resources.
    #
    # For more information about tags, see [Tagging Your Resources][1] in
    # the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `key` - The tag key.
    #
    #   * `resource-id` - The resource ID.
    #
    #   * `resource-type` - The resource type (`customer-gateway` \|
    #     `dhcp-options` \| `image` \| `instance` \| `internet-gateway` \|
    #     `network-acl` \| `network-interface` \| `reserved-instances` \|
    #     `route-table` \| `security-group` \| `snapshot` \|
    #     `spot-instances-request` \| `subnet` \| `volume` \| `vpc` \|
    #     `vpn-connection` \| `vpn-gateway`).
    #
    #   * `value` - The tag value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. This value
    #   can be between 5 and 1000. To retrieve the remaining results, make
    #   another call with the returned `NextToken` value.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next page of results.
    #
    # @return [Types::DescribeTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResult#next_token #next_token} => String
    #   * {Types::DescribeTagsResult#tags #tags} => Array&lt;Types::TagDescription&gt;
    #
    #
    # @example Example: To describe the tags for a single resource
    #
    #   # This example describes the tags for the specified instance.
    #
    #   resp = client.describe_tags({
    #     filters: [
    #       {
    #         name: "resource-id", 
    #         values: [
    #           "i-1234567890abcdef8", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "Stack", 
    #         resource_id: "i-1234567890abcdef8", 
    #         resource_type: "instance", 
    #         value: "test", 
    #       }, 
    #       {
    #         key: "Name", 
    #         resource_id: "i-1234567890abcdef8", 
    #         resource_type: "instance", 
    #         value: "Beta Server", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].resource_id #=> String
    #   resp.tags[0].resource_type #=> String, one of "customer-gateway", "dhcp-options", "image", "instance", "internet-gateway", "network-acl", "network-interface", "reserved-instances", "route-table", "snapshot", "spot-instances-request", "subnet", "security-group", "volume", "vpc", "vpn-connection", "vpn-gateway"
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Describes the specified attribute of the specified volume. You can
    # specify only one attribute at a time.
    #
    # For more information about EBS volumes, see [Amazon EBS Volumes][1] in
    # the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html
    #
    # @option params [String] :attribute
    #   The attribute of the volume. This parameter is required.
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeVolumeAttributeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVolumeAttributeResult#auto_enable_io #auto_enable_io} => Types::AttributeBooleanValue
    #   * {Types::DescribeVolumeAttributeResult#product_codes #product_codes} => Array&lt;Types::ProductCode&gt;
    #   * {Types::DescribeVolumeAttributeResult#volume_id #volume_id} => String
    #
    #
    # @example Example: To describe a volume attribute
    #
    #   # This example describes the ``autoEnableIo`` attribute of the volume with the ID ``vol-049df61146c4d7901``.
    #
    #   resp = client.describe_volume_attribute({
    #     attribute: "autoEnableIO", 
    #     volume_id: "vol-049df61146c4d7901", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_enable_io: {
    #       value: false, 
    #     }, 
    #     volume_id: "vol-049df61146c4d7901", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_volume_attribute({
    #     attribute: "autoEnableIO", # accepts autoEnableIO, productCodes
    #     volume_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_enable_io.value #=> Boolean
    #   resp.product_codes #=> Array
    #   resp.product_codes[0].product_code_id #=> String
    #   resp.product_codes[0].product_code_type #=> String, one of "devpay", "marketplace"
    #   resp.volume_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumeAttribute AWS API Documentation
    #
    # @overload describe_volume_attribute(params = {})
    # @param [Hash] params ({})
    def describe_volume_attribute(params = {}, options = {})
      req = build_request(:describe_volume_attribute, params)
      req.send_request(options)
    end

    # Describes the status of the specified volumes. Volume status provides
    # the result of the checks performed on your volumes to determine events
    # that can impair the performance of your volumes. The performance of a
    # volume can be affected if an issue occurs on the volume's underlying
    # host. If the volume's underlying host experiences a power outage or
    # system issue, after the system is restored, there could be data
    # inconsistencies on the volume. Volume events notify you if this
    # occurs. Volume actions notify you if any action needs to be taken in
    # response to the event.
    #
    # The `DescribeVolumeStatus` operation provides the following
    # information about the specified volumes:
    #
    # *Status*\: Reflects the current status of the volume. The possible
    # values are `ok`, `impaired` , `warning`, or `insufficient-data`. If
    # all checks pass, the overall status of the volume is `ok`. If the
    # check fails, the overall status is `impaired`. If the status is
    # `insufficient-data`, then the checks may still be taking place on your
    # volume at the time. We recommend that you retry the request. For more
    # information on volume status, see [Monitoring the Status of Your
    # Volumes][1].
    #
    # *Events*\: Reflect the cause of a volume status and may require you to
    # take action. For example, if your volume returns an `impaired` status,
    # then the volume event might be `potential-data-inconsistency`. This
    # means that your volume has been affected by an issue with the
    # underlying host, has all I/O operations disabled, and may have
    # inconsistent data.
    #
    # *Actions*\: Reflect the actions you may have to take in response to an
    # event. For example, if the status of the volume is `impaired` and the
    # volume event shows `potential-data-inconsistency`, then the action
    # shows `enable-volume-io`. This means that you may want to enable the
    # I/O operations for the volume by calling the EnableVolumeIO action and
    # then check the volume for data consistency.
    #
    # <note markdown="1"> Volume status is based on the volume status checks, and does not
    # reflect the volume state. Therefore, volume status does not indicate
    # volumes in the `error` state (for example, when a volume is incapable
    # of accepting I/O.)
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `action.code` - The action code for the event (for example,
    #     `enable-volume-io`).
    #
    #   * `action.description` - A description of the action.
    #
    #   * `action.event-id` - The event ID associated with the action.
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `event.description` - A description of the event.
    #
    #   * `event.event-id` - The event ID.
    #
    #   * `event.event-type` - The event type (for `io-enabled`\: `passed` \|
    #     `failed`; for `io-performance`\: `io-performance:degraded` \|
    #     `io-performance:severely-degraded` \| `io-performance:stalled`).
    #
    #   * `event.not-after` - The latest end time for the event.
    #
    #   * `event.not-before` - The earliest start time for the event.
    #
    #   * `volume-status.details-name` - The cause for `volume-status.status`
    #     (`io-enabled` \| `io-performance`).
    #
    #   * `volume-status.details-status` - The status of
    #     `volume-status.details-name` (for `io-enabled`\: `passed` \|
    #     `failed`; for `io-performance`\: `normal` \| `degraded` \|
    #     `severely-degraded` \| `stalled`).
    #
    #   * `volume-status.status` - The status of the volume (`ok` \|
    #     `impaired` \| `warning` \| `insufficient-data`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of volume results returned by
    #   `DescribeVolumeStatus` in paginated output. When this parameter is
    #   used, the request only returns `MaxResults` results in a single page
    #   along with a `NextToken` response element. The remaining results of
    #   the initial request can be seen by sending another request with the
    #   returned `NextToken` value. This value can be between 5 and 1000; if
    #   `MaxResults` is given a value larger than 1000, only 1000 results are
    #   returned. If this parameter is not used, then `DescribeVolumeStatus`
    #   returns all results. You cannot specify this parameter and the volume
    #   IDs parameter in the same request.
    #
    # @option params [String] :next_token
    #   The `NextToken` value to include in a future `DescribeVolumeStatus`
    #   request. When the results of the request exceed `MaxResults`, this
    #   value can be used to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #
    # @option params [Array<String>] :volume_ids
    #   One or more volume IDs.
    #
    #   Default: Describes all your volumes.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeVolumeStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVolumeStatusResult#next_token #next_token} => String
    #   * {Types::DescribeVolumeStatusResult#volume_statuses #volume_statuses} => Array&lt;Types::VolumeStatusItem&gt;
    #
    #
    # @example Example: To describe the status of a single volume
    #
    #   # This example describes the status for the volume ``vol-1234567890abcdef0``.
    #
    #   resp = client.describe_volume_status({
    #     volume_ids: [
    #       "vol-1234567890abcdef0", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     volume_statuses: [
    #       {
    #         actions: [
    #         ], 
    #         availability_zone: "us-east-1a", 
    #         events: [
    #         ], 
    #         volume_id: "vol-1234567890abcdef0", 
    #         volume_status: {
    #           details: [
    #             {
    #               name: "io-enabled", 
    #               status: "passed", 
    #             }, 
    #             {
    #               name: "io-performance", 
    #               status: "not-applicable", 
    #             }, 
    #           ], 
    #           status: "ok", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To describe the status of impaired volumes
    #
    #   # This example describes the status for all volumes that are impaired. In this example output, there are no impaired volumes.
    #
    #   resp = client.describe_volume_status({
    #     filters: [
    #       {
    #         name: "volume-status.status", 
    #         values: [
    #           "impaired", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     volume_statuses: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_volume_status({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #     volume_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.volume_statuses #=> Array
    #   resp.volume_statuses[0].actions #=> Array
    #   resp.volume_statuses[0].actions[0].code #=> String
    #   resp.volume_statuses[0].actions[0].description #=> String
    #   resp.volume_statuses[0].actions[0].event_id #=> String
    #   resp.volume_statuses[0].actions[0].event_type #=> String
    #   resp.volume_statuses[0].availability_zone #=> String
    #   resp.volume_statuses[0].events #=> Array
    #   resp.volume_statuses[0].events[0].description #=> String
    #   resp.volume_statuses[0].events[0].event_id #=> String
    #   resp.volume_statuses[0].events[0].event_type #=> String
    #   resp.volume_statuses[0].events[0].not_after #=> Time
    #   resp.volume_statuses[0].events[0].not_before #=> Time
    #   resp.volume_statuses[0].volume_id #=> String
    #   resp.volume_statuses[0].volume_status.details #=> Array
    #   resp.volume_statuses[0].volume_status.details[0].name #=> String, one of "io-enabled", "io-performance"
    #   resp.volume_statuses[0].volume_status.details[0].status #=> String
    #   resp.volume_statuses[0].volume_status.status #=> String, one of "ok", "impaired", "insufficient-data"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumeStatus AWS API Documentation
    #
    # @overload describe_volume_status(params = {})
    # @param [Hash] params ({})
    def describe_volume_status(params = {}, options = {})
      req = build_request(:describe_volume_status, params)
      req.send_request(options)
    end

    # Describes the specified EBS volumes.
    #
    # If you are describing a long list of volumes, you can paginate the
    # output to make the list more manageable. The `MaxResults` parameter
    # sets the maximum number of results returned in a single page. If the
    # list of results exceeds your `MaxResults` value, then that number of
    # results is returned along with a `NextToken` value that can be passed
    # to a subsequent `DescribeVolumes` request to retrieve the remaining
    # results.
    #
    # For more information about EBS volumes, see [Amazon EBS Volumes][1] in
    # the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `attachment.attach-time` - The time stamp when the attachment
    #     initiated.
    #
    #   * `attachment.delete-on-termination` - Whether the volume is deleted
    #     on instance termination.
    #
    #   * `attachment.device` - The device name that is exposed to the
    #     instance (for example, `/dev/sda1`).
    #
    #   * `attachment.instance-id` - The ID of the instance the volume is
    #     attached to.
    #
    #   * `attachment.status` - The attachment state (`attaching` \|
    #     `attached` \| `detaching` \| `detached`).
    #
    #   * `availability-zone` - The Availability Zone in which the volume was
    #     created.
    #
    #   * `create-time` - The time stamp when the volume was created.
    #
    #   * `encrypted` - The encryption status of the volume.
    #
    #   * `size` - The size of the volume, in GiB.
    #
    #   * `snapshot-id` - The snapshot from which the volume was created.
    #
    #   * `status` - The status of the volume (`creating` \| `available` \|
    #     `in-use` \| `deleting` \| `deleted` \| `error`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `volume-id` - The volume ID.
    #
    #   * `volume-type` - The Amazon EBS volume type. This can be `gp2` for
    #     General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for
    #     Throughput Optimized HDD, `sc1` for Cold HDD, or `standard` for
    #     Magnetic volumes.
    #
    # @option params [Array<String>] :volume_ids
    #   One or more volume IDs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of volume results returned by `DescribeVolumes` in
    #   paginated output. When this parameter is used, `DescribeVolumes` only
    #   returns `MaxResults` results in a single page along with a `NextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `DescribeVolumes` request with the returned
    #   `NextToken` value. This value can be between 5 and 500; if
    #   `MaxResults` is given a value larger than 500, only 500 results are
    #   returned. If this parameter is not used, then `DescribeVolumes`
    #   returns all results. You cannot specify this parameter and the volume
    #   IDs parameter in the same request.
    #
    # @option params [String] :next_token
    #   The `NextToken` value returned from a previous paginated
    #   `DescribeVolumes` request where `MaxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `NextToken` value. This
    #   value is `null` when there are no more results to return.
    #
    # @return [Types::DescribeVolumesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVolumesResult#volumes #volumes} => Array&lt;Types::Volume&gt;
    #   * {Types::DescribeVolumesResult#next_token #next_token} => String
    #
    #
    # @example Example: To describe all volumes
    #
    #   # This example describes all of your volumes in the default region.
    #
    #   resp = client.describe_volumes({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "", 
    #     volumes: [
    #       {
    #         attachments: [
    #           {
    #             attach_time: Time.parse("2013-12-18T22:35:00.000Z"), 
    #             delete_on_termination: true, 
    #             device: "/dev/sda1", 
    #             instance_id: "i-1234567890abcdef0", 
    #             state: "attached", 
    #             volume_id: "vol-049df61146c4d7901", 
    #           }, 
    #         ], 
    #         availability_zone: "us-east-1a", 
    #         create_time: Time.parse("2013-12-18T22:35:00.084Z"), 
    #         size: 8, 
    #         snapshot_id: "snap-1234567890abcdef0", 
    #         state: "in-use", 
    #         volume_id: "vol-049df61146c4d7901", 
    #         volume_type: "standard", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To describe volumes that are attached to a specific instance
    #
    #   # This example describes all volumes that are both attached to the instance with the ID i-1234567890abcdef0 and set to delete when the instance terminates.
    #
    #   resp = client.describe_volumes({
    #     filters: [
    #       {
    #         name: "attachment.instance-id", 
    #         values: [
    #           "i-1234567890abcdef0", 
    #         ], 
    #       }, 
    #       {
    #         name: "attachment.delete-on-termination", 
    #         values: [
    #           "true", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     volumes: [
    #       {
    #         attachments: [
    #           {
    #             attach_time: Time.parse("2013-12-18T22:35:00.000Z"), 
    #             delete_on_termination: true, 
    #             device: "/dev/sda1", 
    #             instance_id: "i-1234567890abcdef0", 
    #             state: "attached", 
    #             volume_id: "vol-049df61146c4d7901", 
    #           }, 
    #         ], 
    #         availability_zone: "us-east-1a", 
    #         create_time: Time.parse("2013-12-18T22:35:00.084Z"), 
    #         size: 8, 
    #         snapshot_id: "snap-1234567890abcdef0", 
    #         state: "in-use", 
    #         volume_id: "vol-049df61146c4d7901", 
    #         volume_type: "standard", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_volumes({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     volume_ids: ["String"],
    #     dry_run: false,
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.volumes #=> Array
    #   resp.volumes[0].attachments #=> Array
    #   resp.volumes[0].attachments[0].attach_time #=> Time
    #   resp.volumes[0].attachments[0].device #=> String
    #   resp.volumes[0].attachments[0].instance_id #=> String
    #   resp.volumes[0].attachments[0].state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.volumes[0].attachments[0].volume_id #=> String
    #   resp.volumes[0].attachments[0].delete_on_termination #=> Boolean
    #   resp.volumes[0].availability_zone #=> String
    #   resp.volumes[0].create_time #=> Time
    #   resp.volumes[0].encrypted #=> Boolean
    #   resp.volumes[0].kms_key_id #=> String
    #   resp.volumes[0].size #=> Integer
    #   resp.volumes[0].snapshot_id #=> String
    #   resp.volumes[0].state #=> String, one of "creating", "available", "in-use", "deleting", "deleted", "error"
    #   resp.volumes[0].volume_id #=> String
    #   resp.volumes[0].iops #=> Integer
    #   resp.volumes[0].tags #=> Array
    #   resp.volumes[0].tags[0].key #=> String
    #   resp.volumes[0].tags[0].value #=> String
    #   resp.volumes[0].volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumes AWS API Documentation
    #
    # @overload describe_volumes(params = {})
    # @param [Hash] params ({})
    def describe_volumes(params = {}, options = {})
      req = build_request(:describe_volumes, params)
      req.send_request(options)
    end

    # Reports the current modification status of EBS volumes.
    #
    # Current-generation EBS volumes support modification of attributes
    # including type, size, and (for `io1` volumes) IOPS provisioning while
    # either attached to or detached from an instance. Following an action
    # from the API or the console to modify a volume, the status of the
    # modification may be `modifying`, `optimizing`, `completed`, or
    # `failed`. If a volume has never been modified, then certain elements
    # of the returned `VolumeModification` objects are null.
    #
    # You can also use CloudWatch Events to check the status of a
    # modification to an EBS volume. For information about CloudWatch
    # Events, see the [Amazon CloudWatch Events User Guide][1]. For more
    # information, see [Monitoring Volume Modifications"][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :volume_ids
    #   One or more volume IDs for which in-progress modifications will be
    #   described.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters. Supported filters: `volume-id`,
    #   `modification-state`, `target-size`, `target-iops`,
    #   `target-volume-type`, `original-size`, `original-iops`,
    #   `original-volume-type`, `start-time`.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned by a previous paginated request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results (up to a limit of 500) to be returned in
    #   a paginated request.
    #
    # @return [Types::DescribeVolumesModificationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVolumesModificationsResult#volumes_modifications #volumes_modifications} => Array&lt;Types::VolumeModification&gt;
    #   * {Types::DescribeVolumesModificationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_volumes_modifications({
    #     dry_run: false,
    #     volume_ids: ["String"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.volumes_modifications #=> Array
    #   resp.volumes_modifications[0].volume_id #=> String
    #   resp.volumes_modifications[0].modification_state #=> String, one of "modifying", "optimizing", "completed", "failed"
    #   resp.volumes_modifications[0].status_message #=> String
    #   resp.volumes_modifications[0].target_size #=> Integer
    #   resp.volumes_modifications[0].target_iops #=> Integer
    #   resp.volumes_modifications[0].target_volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.volumes_modifications[0].original_size #=> Integer
    #   resp.volumes_modifications[0].original_iops #=> Integer
    #   resp.volumes_modifications[0].original_volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.volumes_modifications[0].progress #=> Integer
    #   resp.volumes_modifications[0].start_time #=> Time
    #   resp.volumes_modifications[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumesModifications AWS API Documentation
    #
    # @overload describe_volumes_modifications(params = {})
    # @param [Hash] params ({})
    def describe_volumes_modifications(params = {}, options = {})
      req = build_request(:describe_volumes_modifications, params)
      req.send_request(options)
    end

    # Describes the specified attribute of the specified VPC. You can
    # specify only one attribute at a time.
    #
    # @option params [required, String] :attribute
    #   The VPC attribute.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeVpcAttributeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcAttributeResult#vpc_id #vpc_id} => String
    #   * {Types::DescribeVpcAttributeResult#enable_dns_hostnames #enable_dns_hostnames} => Types::AttributeBooleanValue
    #   * {Types::DescribeVpcAttributeResult#enable_dns_support #enable_dns_support} => Types::AttributeBooleanValue
    #
    #
    # @example Example: To describe the enableDnsSupport attribute
    #
    #   # This example describes the enableDnsSupport attribute. This attribute indicates whether DNS resolution is enabled for the VPC. If this attribute is true, the Amazon DNS server resolves DNS hostnames for your instances to their corresponding IP addresses; otherwise, it does not.
    #
    #   resp = client.describe_vpc_attribute({
    #     attribute: "enableDnsSupport", 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     enable_dns_support: {
    #       value: true, 
    #     }, 
    #     vpc_id: "vpc-a01106c2", 
    #   }
    #
    # @example Example: To describe the enableDnsHostnames attribute
    #
    #   # This example describes the enableDnsHostnames attribute. This attribute indicates whether the instances launched in the VPC get DNS hostnames. If this attribute is true, instances in the VPC get DNS hostnames; otherwise, they do not.
    #
    #   resp = client.describe_vpc_attribute({
    #     attribute: "enableDnsHostnames", 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     enable_dns_hostnames: {
    #       value: true, 
    #     }, 
    #     vpc_id: "vpc-a01106c2", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_attribute({
    #     attribute: "enableDnsSupport", # required, accepts enableDnsSupport, enableDnsHostnames
    #     vpc_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_id #=> String
    #   resp.enable_dns_hostnames.value #=> Boolean
    #   resp.enable_dns_support.value #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcAttribute AWS API Documentation
    #
    # @overload describe_vpc_attribute(params = {})
    # @param [Hash] params ({})
    def describe_vpc_attribute(params = {}, options = {})
      req = build_request(:describe_vpc_attribute, params)
      req.send_request(options)
    end

    # Describes the ClassicLink status of one or more VPCs.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `is-classic-link-enabled` - Whether the VPC is enabled for
    #     ClassicLink (`true` \| `false`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :vpc_ids
    #   One or more VPCs for which you want to describe the ClassicLink
    #   status.
    #
    # @return [Types::DescribeVpcClassicLinkResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcClassicLinkResult#vpcs #vpcs} => Array&lt;Types::VpcClassicLink&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_classic_link({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     vpc_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.vpcs #=> Array
    #   resp.vpcs[0].classic_link_enabled #=> Boolean
    #   resp.vpcs[0].tags #=> Array
    #   resp.vpcs[0].tags[0].key #=> String
    #   resp.vpcs[0].tags[0].value #=> String
    #   resp.vpcs[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcClassicLink AWS API Documentation
    #
    # @overload describe_vpc_classic_link(params = {})
    # @param [Hash] params ({})
    def describe_vpc_classic_link(params = {}, options = {})
      req = build_request(:describe_vpc_classic_link, params)
      req.send_request(options)
    end

    # Describes the ClassicLink DNS support status of one or more VPCs. If
    # enabled, the DNS hostname of a linked EC2-Classic instance resolves to
    # its private IP address when addressed from an instance in the VPC to
    # which it's linked. Similarly, the DNS hostname of an instance in a
    # VPC resolves to its private IP address when addressed from a linked
    # EC2-Classic instance. For more information, see [ClassicLink][1] in
    # the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #
    # @option params [Array<String>] :vpc_ids
    #   One or more VPC IDs.
    #
    # @return [Types::DescribeVpcClassicLinkDnsSupportResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcClassicLinkDnsSupportResult#next_token #next_token} => String
    #   * {Types::DescribeVpcClassicLinkDnsSupportResult#vpcs #vpcs} => Array&lt;Types::ClassicLinkDnsSupport&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_classic_link_dns_support({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     vpc_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.vpcs #=> Array
    #   resp.vpcs[0].classic_link_dns_supported #=> Boolean
    #   resp.vpcs[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcClassicLinkDnsSupport AWS API Documentation
    #
    # @overload describe_vpc_classic_link_dns_support(params = {})
    # @param [Hash] params ({})
    def describe_vpc_classic_link_dns_support(params = {}, options = {})
      req = build_request(:describe_vpc_classic_link_dns_support, params)
      req.send_request(options)
    end

    # Describes all supported AWS services that can be specified when
    # creating a VPC endpoint.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    #   Constraint: If the value is greater than 1000, we return only 1000
    #   items.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #
    # @return [Types::DescribeVpcEndpointServicesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcEndpointServicesResult#next_token #next_token} => String
    #   * {Types::DescribeVpcEndpointServicesResult#service_names #service_names} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_endpoint_services({
    #     dry_run: false,
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.service_names #=> Array
    #   resp.service_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointServices AWS API Documentation
    #
    # @overload describe_vpc_endpoint_services(params = {})
    # @param [Hash] params ({})
    def describe_vpc_endpoint_services(params = {}, options = {})
      req = build_request(:describe_vpc_endpoint_services, params)
      req.send_request(options)
    end

    # Describes one or more of your VPC endpoints.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `service-name`\: The name of the AWS service.
    #
    #   * `vpc-id`\: The ID of the VPC in which the endpoint resides.
    #
    #   * `vpc-endpoint-id`\: The ID of the endpoint.
    #
    #   * `vpc-endpoint-state`\: The state of the endpoint. (`pending` \|
    #     `available` \| `deleting` \| `deleted`)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    #   Constraint: If the value is greater than 1000, we return only 1000
    #   items.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #
    # @option params [Array<String>] :vpc_endpoint_ids
    #   One or more endpoint IDs.
    #
    # @return [Types::DescribeVpcEndpointsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcEndpointsResult#next_token #next_token} => String
    #   * {Types::DescribeVpcEndpointsResult#vpc_endpoints #vpc_endpoints} => Array&lt;Types::VpcEndpoint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_endpoints({
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #     vpc_endpoint_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.vpc_endpoints #=> Array
    #   resp.vpc_endpoints[0].creation_timestamp #=> Time
    #   resp.vpc_endpoints[0].policy_document #=> String
    #   resp.vpc_endpoints[0].route_table_ids #=> Array
    #   resp.vpc_endpoints[0].route_table_ids[0] #=> String
    #   resp.vpc_endpoints[0].service_name #=> String
    #   resp.vpc_endpoints[0].state #=> String, one of "Pending", "Available", "Deleting", "Deleted"
    #   resp.vpc_endpoints[0].vpc_endpoint_id #=> String
    #   resp.vpc_endpoints[0].vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpoints AWS API Documentation
    #
    # @overload describe_vpc_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_vpc_endpoints(params = {}, options = {})
      req = build_request(:describe_vpc_endpoints, params)
      req.send_request(options)
    end

    # Describes one or more of your VPC peering connections.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `accepter-vpc-info.cidr-block` - The IPv4 CIDR block of the peer
    #     VPC.
    #
    #   * `accepter-vpc-info.owner-id` - The AWS account ID of the owner of
    #     the peer VPC.
    #
    #   * `accepter-vpc-info.vpc-id` - The ID of the peer VPC.
    #
    #   * `expiration-time` - The expiration date and time for the VPC peering
    #     connection.
    #
    #   * `requester-vpc-info.cidr-block` - The IPv4 CIDR block of the
    #     requester's VPC.
    #
    #   * `requester-vpc-info.owner-id` - The AWS account ID of the owner of
    #     the requester VPC.
    #
    #   * `requester-vpc-info.vpc-id` - The ID of the requester VPC.
    #
    #   * `status-code` - The status of the VPC peering connection
    #     (`pending-acceptance` \| `failed` \| `expired` \| `provisioning` \|
    #     `active` \| `deleted` \| `rejected`).
    #
    #   * `status-message` - A message that provides more information about
    #     the status of the VPC peering connection, if applicable.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-peering-connection-id` - The ID of the VPC peering connection.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :vpc_peering_connection_ids
    #   One or more VPC peering connection IDs.
    #
    #   Default: Describes all your VPC peering connections.
    #
    # @return [Types::DescribeVpcPeeringConnectionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcPeeringConnectionsResult#vpc_peering_connections #vpc_peering_connections} => Array&lt;Types::VpcPeeringConnection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_peering_connections({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     dry_run: false,
    #     vpc_peering_connection_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_peering_connections #=> Array
    #   resp.vpc_peering_connections[0].accepter_vpc_info.cidr_block #=> String
    #   resp.vpc_peering_connections[0].accepter_vpc_info.ipv_6_cidr_block_set #=> Array
    #   resp.vpc_peering_connections[0].accepter_vpc_info.ipv_6_cidr_block_set[0].ipv_6_cidr_block #=> String
    #   resp.vpc_peering_connections[0].accepter_vpc_info.owner_id #=> String
    #   resp.vpc_peering_connections[0].accepter_vpc_info.peering_options.allow_dns_resolution_from_remote_vpc #=> Boolean
    #   resp.vpc_peering_connections[0].accepter_vpc_info.peering_options.allow_egress_from_local_classic_link_to_remote_vpc #=> Boolean
    #   resp.vpc_peering_connections[0].accepter_vpc_info.peering_options.allow_egress_from_local_vpc_to_remote_classic_link #=> Boolean
    #   resp.vpc_peering_connections[0].accepter_vpc_info.vpc_id #=> String
    #   resp.vpc_peering_connections[0].expiration_time #=> Time
    #   resp.vpc_peering_connections[0].requester_vpc_info.cidr_block #=> String
    #   resp.vpc_peering_connections[0].requester_vpc_info.ipv_6_cidr_block_set #=> Array
    #   resp.vpc_peering_connections[0].requester_vpc_info.ipv_6_cidr_block_set[0].ipv_6_cidr_block #=> String
    #   resp.vpc_peering_connections[0].requester_vpc_info.owner_id #=> String
    #   resp.vpc_peering_connections[0].requester_vpc_info.peering_options.allow_dns_resolution_from_remote_vpc #=> Boolean
    #   resp.vpc_peering_connections[0].requester_vpc_info.peering_options.allow_egress_from_local_classic_link_to_remote_vpc #=> Boolean
    #   resp.vpc_peering_connections[0].requester_vpc_info.peering_options.allow_egress_from_local_vpc_to_remote_classic_link #=> Boolean
    #   resp.vpc_peering_connections[0].requester_vpc_info.vpc_id #=> String
    #   resp.vpc_peering_connections[0].status.code #=> String, one of "initiating-request", "pending-acceptance", "active", "deleted", "rejected", "failed", "expired", "provisioning", "deleting"
    #   resp.vpc_peering_connections[0].status.message #=> String
    #   resp.vpc_peering_connections[0].tags #=> Array
    #   resp.vpc_peering_connections[0].tags[0].key #=> String
    #   resp.vpc_peering_connections[0].tags[0].value #=> String
    #   resp.vpc_peering_connections[0].vpc_peering_connection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcPeeringConnections AWS API Documentation
    #
    # @overload describe_vpc_peering_connections(params = {})
    # @param [Hash] params ({})
    def describe_vpc_peering_connections(params = {}, options = {})
      req = build_request(:describe_vpc_peering_connections, params)
      req.send_request(options)
    end

    # Describes one or more of your VPCs.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `cidr` - The IPv4 CIDR block of the VPC. The CIDR block you specify
    #     must exactly match the VPC's CIDR block for information to be
    #     returned for the VPC. Must contain the slash followed by one or two
    #     digits (for example, `/28`).
    #
    #   * `dhcp-options-id` - The ID of a set of DHCP options.
    #
    #   * `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block
    #     associated with the VPC.
    #
    #   * `ipv6-cidr-block-association.association-id` - The association ID
    #     for an IPv6 CIDR block associated with the VPC.
    #
    #   * `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR
    #     block associated with the VPC.
    #
    #   * `isDefault` - Indicates whether the VPC is the default VPC.
    #
    #   * `state` - The state of the VPC (`pending` \| `available`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC.
    #
    # @option params [Array<String>] :vpc_ids
    #   One or more VPC IDs.
    #
    #   Default: Describes all your VPCs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeVpcsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcsResult#vpcs #vpcs} => Array&lt;Types::Vpc&gt;
    #
    #
    # @example Example: To describe a VPC
    #
    #   # This example describes the specified VPC.
    #
    #   resp = client.describe_vpcs({
    #     vpc_ids: [
    #       "vpc-a01106c2", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     vpcs: [
    #       {
    #         cidr_block: "10.0.0.0/16", 
    #         dhcp_options_id: "dopt-7a8b9c2d", 
    #         instance_tenancy: "default", 
    #         is_default: false, 
    #         state: "available", 
    #         tags: [
    #           {
    #             key: "Name", 
    #             value: "MyVPC", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-a01106c2", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpcs({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     vpc_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpcs #=> Array
    #   resp.vpcs[0].cidr_block #=> String
    #   resp.vpcs[0].dhcp_options_id #=> String
    #   resp.vpcs[0].state #=> String, one of "pending", "available"
    #   resp.vpcs[0].vpc_id #=> String
    #   resp.vpcs[0].instance_tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.vpcs[0].ipv_6_cidr_block_association_set #=> Array
    #   resp.vpcs[0].ipv_6_cidr_block_association_set[0].association_id #=> String
    #   resp.vpcs[0].ipv_6_cidr_block_association_set[0].ipv_6_cidr_block #=> String
    #   resp.vpcs[0].ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.vpcs[0].ipv_6_cidr_block_association_set[0].ipv_6_cidr_block_state.status_message #=> String
    #   resp.vpcs[0].is_default #=> Boolean
    #   resp.vpcs[0].tags #=> Array
    #   resp.vpcs[0].tags[0].key #=> String
    #   resp.vpcs[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcs AWS API Documentation
    #
    # @overload describe_vpcs(params = {})
    # @param [Hash] params ({})
    def describe_vpcs(params = {}, options = {})
      req = build_request(:describe_vpcs, params)
      req.send_request(options)
    end

    # Describes one or more of your VPN connections.
    #
    # For more information about VPN connections, see [Adding a Hardware
    # Virtual Private Gateway to Your VPC][1] in the *Amazon Virtual Private
    # Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `customer-gateway-configuration` - The configuration information for
    #     the customer gateway.
    #
    #   * `customer-gateway-id` - The ID of a customer gateway associated with
    #     the VPN connection.
    #
    #   * `state` - The state of the VPN connection (`pending` \| `available`
    #     \| `deleting` \| `deleted`).
    #
    #   * `option.static-routes-only` - Indicates whether the connection has
    #     static routes only. Used for devices that do not support Border
    #     Gateway Protocol (BGP).
    #
    #   * `route.destination-cidr-block` - The destination CIDR block. This
    #     corresponds to the subnet used in a customer data center.
    #
    #   * `bgp-asn` - The BGP Autonomous System Number (ASN) associated with a
    #     BGP device.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `type` - The type of VPN connection. Currently the only supported
    #     type is `ipsec.1`.
    #
    #   * `vpn-connection-id` - The ID of the VPN connection.
    #
    #   * `vpn-gateway-id` - The ID of a virtual private gateway associated
    #     with the VPN connection.
    #
    # @option params [Array<String>] :vpn_connection_ids
    #   One or more VPN connection IDs.
    #
    #   Default: Describes your VPN connections.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeVpnConnectionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpnConnectionsResult#vpn_connections #vpn_connections} => Array&lt;Types::VpnConnection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpn_connections({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     vpn_connection_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpn_connections #=> Array
    #   resp.vpn_connections[0].customer_gateway_configuration #=> String
    #   resp.vpn_connections[0].customer_gateway_id #=> String
    #   resp.vpn_connections[0].state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.vpn_connections[0].type #=> String, one of "ipsec.1"
    #   resp.vpn_connections[0].vpn_connection_id #=> String
    #   resp.vpn_connections[0].vpn_gateway_id #=> String
    #   resp.vpn_connections[0].options.static_routes_only #=> Boolean
    #   resp.vpn_connections[0].routes #=> Array
    #   resp.vpn_connections[0].routes[0].destination_cidr_block #=> String
    #   resp.vpn_connections[0].routes[0].source #=> String, one of "Static"
    #   resp.vpn_connections[0].routes[0].state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.vpn_connections[0].tags #=> Array
    #   resp.vpn_connections[0].tags[0].key #=> String
    #   resp.vpn_connections[0].tags[0].value #=> String
    #   resp.vpn_connections[0].vgw_telemetry #=> Array
    #   resp.vpn_connections[0].vgw_telemetry[0].accepted_route_count #=> Integer
    #   resp.vpn_connections[0].vgw_telemetry[0].last_status_change #=> Time
    #   resp.vpn_connections[0].vgw_telemetry[0].outside_ip_address #=> String
    #   resp.vpn_connections[0].vgw_telemetry[0].status #=> String, one of "UP", "DOWN"
    #   resp.vpn_connections[0].vgw_telemetry[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpnConnections AWS API Documentation
    #
    # @overload describe_vpn_connections(params = {})
    # @param [Hash] params ({})
    def describe_vpn_connections(params = {}, options = {})
      req = build_request(:describe_vpn_connections, params)
      req.send_request(options)
    end

    # Describes one or more of your virtual private gateways.
    #
    # For more information about virtual private gateways, see [Adding an
    # IPsec Hardware VPN to Your VPC][1] in the *Amazon Virtual Private
    # Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `attachment.state` - The current state of the attachment between the
    #     gateway and the VPC (`attaching` \| `attached` \| `detaching` \|
    #     `detached`).
    #
    #   * `attachment.vpc-id` - The ID of an attached VPC.
    #
    #   * `availability-zone` - The Availability Zone for the virtual private
    #     gateway (if applicable).
    #
    #   * `state` - The state of the virtual private gateway (`pending` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for the
    #     filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter "tag-value=X",
    #     you get any resources assigned both the tag key Purpose (regardless
    #     of what the tag's value is), and the tag value X (regardless of
    #     what the tag's key is). If you want to list only resources where
    #     Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `type` - The type of virtual private gateway. Currently the only
    #     supported type is `ipsec.1`.
    #
    #   * `vpn-gateway-id` - The ID of the virtual private gateway.
    #
    # @option params [Array<String>] :vpn_gateway_ids
    #   One or more virtual private gateway IDs.
    #
    #   Default: Describes all your virtual private gateways.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::DescribeVpnGatewaysResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpnGatewaysResult#vpn_gateways #vpn_gateways} => Array&lt;Types::VpnGateway&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpn_gateways({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     vpn_gateway_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpn_gateways #=> Array
    #   resp.vpn_gateways[0].availability_zone #=> String
    #   resp.vpn_gateways[0].state #=> String, one of "pending", "available", "deleting", "deleted"
    #   resp.vpn_gateways[0].type #=> String, one of "ipsec.1"
    #   resp.vpn_gateways[0].vpc_attachments #=> Array
    #   resp.vpn_gateways[0].vpc_attachments[0].state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.vpn_gateways[0].vpc_attachments[0].vpc_id #=> String
    #   resp.vpn_gateways[0].vpn_gateway_id #=> String
    #   resp.vpn_gateways[0].tags #=> Array
    #   resp.vpn_gateways[0].tags[0].key #=> String
    #   resp.vpn_gateways[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpnGateways AWS API Documentation
    #
    # @overload describe_vpn_gateways(params = {})
    # @param [Hash] params ({})
    def describe_vpn_gateways(params = {}, options = {})
      req = build_request(:describe_vpn_gateways, params)
      req.send_request(options)
    end

    # Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the
    # instance has been unlinked, the VPC security groups are no longer
    # associated with it. An instance is automatically unlinked from a VPC
    # when it's stopped.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance to unlink from the VPC.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC to which the instance is linked.
    #
    # @return [Types::DetachClassicLinkVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachClassicLinkVpcResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_classic_link_vpc({
    #     dry_run: false,
    #     instance_id: "String", # required
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachClassicLinkVpc AWS API Documentation
    #
    # @overload detach_classic_link_vpc(params = {})
    # @param [Hash] params ({})
    def detach_classic_link_vpc(params = {}, options = {})
      req = build_request(:detach_classic_link_vpc, params)
      req.send_request(options)
    end

    # Detaches an Internet gateway from a VPC, disabling connectivity
    # between the Internet and the VPC. The VPC must not contain any running
    # instances with Elastic IP addresses or public IPv4 addresses.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :internet_gateway_id
    #   The ID of the Internet gateway.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To detach an Internet gateway from a VPC
    #
    #   # This example detaches the specified Internet gateway from the specified VPC.
    #
    #   resp = client.detach_internet_gateway({
    #     internet_gateway_id: "igw-c0a643a9", 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_internet_gateway({
    #     dry_run: false,
    #     internet_gateway_id: "String", # required
    #     vpc_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachInternetGateway AWS API Documentation
    #
    # @overload detach_internet_gateway(params = {})
    # @param [Hash] params ({})
    def detach_internet_gateway(params = {}, options = {})
      req = build_request(:detach_internet_gateway, params)
      req.send_request(options)
    end

    # Detaches a network interface from an instance.
    #
    # @option params [required, String] :attachment_id
    #   The ID of the attachment.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Boolean] :force
    #   Specifies whether to force a detachment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To detach a network interface from an instance
    #
    #   # This example detaches the specified network interface from its attached instance.
    #
    #   resp = client.detach_network_interface({
    #     attachment_id: "eni-attach-66c4350a", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_network_interface({
    #     attachment_id: "String", # required
    #     dry_run: false,
    #     force: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachNetworkInterface AWS API Documentation
    #
    # @overload detach_network_interface(params = {})
    # @param [Hash] params ({})
    def detach_network_interface(params = {}, options = {})
      req = build_request(:detach_network_interface, params)
      req.send_request(options)
    end

    # Detaches an EBS volume from an instance. Make sure to unmount any file
    # systems on the device within your operating system before detaching
    # the volume. Failure to do so can result in the volume becoming stuck
    # in the `busy` state while detaching. If this happens, detachment can
    # be delayed indefinitely until you unmount the volume, force
    # detachment, reboot the instance, or all three. If an EBS volume is the
    # root device of an instance, it can't be detached while the instance
    # is running. To detach the root volume, stop the instance first.
    #
    # When a volume with an AWS Marketplace product code is detached from an
    # instance, the product code is no longer associated with the instance.
    #
    # For more information, see [Detaching an Amazon EBS Volume][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html
    #
    # @option params [String] :device
    #   The device name.
    #
    # @option params [Boolean] :force
    #   Forces detachment if the previous detachment attempt did not occur
    #   cleanly (for example, logging into an instance, unmounting the volume,
    #   and detaching normally). This option can lead to data loss or a
    #   corrupted file system. Use this option only as a last resort to detach
    #   a volume from a failed instance. The instance won't have an
    #   opportunity to flush file system caches or file system metadata. If
    #   you use this option, you must perform file system check and repair
    #   procedures.
    #
    # @option params [String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::VolumeAttachment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VolumeAttachment#attach_time #attach_time} => Time
    #   * {Types::VolumeAttachment#device #device} => String
    #   * {Types::VolumeAttachment#instance_id #instance_id} => String
    #   * {Types::VolumeAttachment#state #state} => String
    #   * {Types::VolumeAttachment#volume_id #volume_id} => String
    #   * {Types::VolumeAttachment#delete_on_termination #delete_on_termination} => Boolean
    #
    #
    # @example Example: To detach a volume from an instance
    #
    #   # This example detaches the volume (``vol-049df61146c4d7901``) from the instance it is attached to.
    #
    #   resp = client.detach_volume({
    #     volume_id: "vol-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attach_time: Time.parse("2014-02-27T19:23:06.000Z"), 
    #     device: "/dev/sdb", 
    #     instance_id: "i-1234567890abcdef0", 
    #     state: "detaching", 
    #     volume_id: "vol-049df61146c4d7901", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_volume({
    #     device: "String",
    #     force: false,
    #     instance_id: "String",
    #     volume_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.attach_time #=> Time
    #   resp.device #=> String
    #   resp.instance_id #=> String
    #   resp.state #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.volume_id #=> String
    #   resp.delete_on_termination #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachVolume AWS API Documentation
    #
    # @overload detach_volume(params = {})
    # @param [Hash] params ({})
    def detach_volume(params = {}, options = {})
      req = build_request(:detach_volume, params)
      req.send_request(options)
    end

    # Detaches a virtual private gateway from a VPC. You do this if you're
    # planning to turn off the VPC and not use it anymore. You can confirm a
    # virtual private gateway has been completely detached from a VPC by
    # describing the virtual private gateway (any attachments to the virtual
    # private gateway are also described).
    #
    # You must wait for the attachment's state to switch to `detached`
    # before you can delete the VPC or attach a different VPC to the virtual
    # private gateway.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @option params [required, String] :vpn_gateway_id
    #   The ID of the virtual private gateway.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_vpn_gateway({
    #     vpc_id: "String", # required
    #     vpn_gateway_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachVpnGateway AWS API Documentation
    #
    # @overload detach_vpn_gateway(params = {})
    # @param [Hash] params ({})
    def detach_vpn_gateway(params = {}, options = {})
      req = build_request(:detach_vpn_gateway, params)
      req.send_request(options)
    end

    # Disables a virtual private gateway (VGW) from propagating routes to a
    # specified route table of a VPC.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the virtual private gateway.
    #
    # @option params [required, String] :route_table_id
    #   The ID of the route table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disable route propagation
    #
    #   # This example disables the specified virtual private gateway from propagating static routes to the specified route table.
    #
    #   resp = client.disable_vgw_route_propagation({
    #     gateway_id: "vgw-9a4cacf3", 
    #     route_table_id: "rtb-22574640", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_vgw_route_propagation({
    #     gateway_id: "String", # required
    #     route_table_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVgwRoutePropagation AWS API Documentation
    #
    # @overload disable_vgw_route_propagation(params = {})
    # @param [Hash] params ({})
    def disable_vgw_route_propagation(params = {}, options = {})
      req = build_request(:disable_vgw_route_propagation, params)
      req.send_request(options)
    end

    # Disables ClassicLink for a VPC. You cannot disable ClassicLink for a
    # VPC that has EC2-Classic instances linked to it.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::DisableVpcClassicLinkResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableVpcClassicLinkResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_vpc_classic_link({
    #     dry_run: false,
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVpcClassicLink AWS API Documentation
    #
    # @overload disable_vpc_classic_link(params = {})
    # @param [Hash] params ({})
    def disable_vpc_classic_link(params = {}, options = {})
      req = build_request(:disable_vpc_classic_link, params)
      req.send_request(options)
    end

    # Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames
    # resolve to public IP addresses when addressed between a linked
    # EC2-Classic instance and instances in the VPC to which it's linked.
    # For more information about ClassicLink, see [ClassicLink][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #
    # @option params [String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::DisableVpcClassicLinkDnsSupportResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableVpcClassicLinkDnsSupportResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_vpc_classic_link_dns_support({
    #     vpc_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVpcClassicLinkDnsSupport AWS API Documentation
    #
    # @overload disable_vpc_classic_link_dns_support(params = {})
    # @param [Hash] params ({})
    def disable_vpc_classic_link_dns_support(params = {}, options = {})
      req = build_request(:disable_vpc_classic_link_dns_support, params)
      req.send_request(options)
    end

    # Disassociates an Elastic IP address from the instance or network
    # interface it's associated with.
    #
    # An Elastic IP address is for use in either the EC2-Classic platform or
    # in a VPC. For more information, see [Elastic IP Addresses][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    # This is an idempotent operation. If you perform the operation more
    # than once, Amazon EC2 doesn't return an error.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #
    # @option params [String] :association_id
    #   \[EC2-VPC\] The association ID. Required for EC2-VPC.
    #
    # @option params [String] :public_ip
    #   \[EC2-Classic\] The Elastic IP address. Required for EC2-Classic.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disassociate an Elastic IP address in EC2-VPC
    #
    #   # This example disassociates an Elastic IP address from an instance in a VPC.
    #
    #   resp = client.disassociate_address({
    #     association_id: "eipassoc-2bebb745", 
    #   })
    #
    # @example Example: To disassociate an Elastic IP addresses in EC2-Classic
    #
    #   # This example disassociates an Elastic IP address from an instance in EC2-Classic.
    #
    #   resp = client.disassociate_address({
    #     public_ip: "198.51.100.0", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_address({
    #     association_id: "String",
    #     public_ip: "String",
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateAddress AWS API Documentation
    #
    # @overload disassociate_address(params = {})
    # @param [Hash] params ({})
    def disassociate_address(params = {}, options = {})
      req = build_request(:disassociate_address, params)
      req.send_request(options)
    end

    # Disassociates an IAM instance profile from a running or stopped
    # instance.
    #
    # Use DescribeIamInstanceProfileAssociations to get the association ID.
    #
    # @option params [required, String] :association_id
    #   The ID of the IAM instance profile association.
    #
    # @return [Types::DisassociateIamInstanceProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateIamInstanceProfileResult#iam_instance_profile_association #iam_instance_profile_association} => Types::IamInstanceProfileAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_iam_instance_profile({
    #     association_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_instance_profile_association.association_id #=> String
    #   resp.iam_instance_profile_association.instance_id #=> String
    #   resp.iam_instance_profile_association.iam_instance_profile.arn #=> String
    #   resp.iam_instance_profile_association.iam_instance_profile.id #=> String
    #   resp.iam_instance_profile_association.state #=> String, one of "associating", "associated", "disassociating", "disassociated"
    #   resp.iam_instance_profile_association.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateIamInstanceProfile AWS API Documentation
    #
    # @overload disassociate_iam_instance_profile(params = {})
    # @param [Hash] params ({})
    def disassociate_iam_instance_profile(params = {}, options = {})
      req = build_request(:disassociate_iam_instance_profile, params)
      req.send_request(options)
    end

    # Disassociates a subnet from a route table.
    #
    # After you perform this action, the subnet no longer uses the routes in
    # the route table. Instead, it uses the routes in the VPC's main route
    # table. For more information about route tables, see [Route Tables][1]
    # in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html
    #
    # @option params [required, String] :association_id
    #   The association ID representing the current association between the
    #   route table and subnet.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disassociate a route table
    #
    #   # This example disassociates the specified route table from its associated subnet.
    #
    #   resp = client.disassociate_route_table({
    #     association_id: "rtbassoc-781d0d1a", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_route_table({
    #     association_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateRouteTable AWS API Documentation
    #
    # @overload disassociate_route_table(params = {})
    # @param [Hash] params ({})
    def disassociate_route_table(params = {}, options = {})
      req = build_request(:disassociate_route_table, params)
      req.send_request(options)
    end

    # Disassociates a CIDR block from a subnet. Currently, you can
    # disassociate an IPv6 CIDR block only. You must detach or delete all
    # gateways and resources that are associated with the CIDR block before
    # you can disassociate it.
    #
    # @option params [required, String] :association_id
    #   The association ID for the CIDR block.
    #
    # @return [Types::DisassociateSubnetCidrBlockResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateSubnetCidrBlockResult#ipv_6_cidr_block_association #ipv_6_cidr_block_association} => Types::SubnetIpv6CidrBlockAssociation
    #   * {Types::DisassociateSubnetCidrBlockResult#subnet_id #subnet_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_subnet_cidr_block({
    #     association_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ipv_6_cidr_block_association.association_id #=> String
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block #=> String
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block_state.status_message #=> String
    #   resp.subnet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateSubnetCidrBlock AWS API Documentation
    #
    # @overload disassociate_subnet_cidr_block(params = {})
    # @param [Hash] params ({})
    def disassociate_subnet_cidr_block(params = {}, options = {})
      req = build_request(:disassociate_subnet_cidr_block, params)
      req.send_request(options)
    end

    # Disassociates a CIDR block from a VPC. Currently, you can disassociate
    # an IPv6 CIDR block only. You must detach or delete all gateways and
    # resources that are associated with the CIDR block before you can
    # disassociate it.
    #
    # @option params [required, String] :association_id
    #   The association ID for the CIDR block.
    #
    # @return [Types::DisassociateVpcCidrBlockResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateVpcCidrBlockResult#ipv_6_cidr_block_association #ipv_6_cidr_block_association} => Types::VpcIpv6CidrBlockAssociation
    #   * {Types::DisassociateVpcCidrBlockResult#vpc_id #vpc_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_vpc_cidr_block({
    #     association_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ipv_6_cidr_block_association.association_id #=> String
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block #=> String
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block_state.state #=> String, one of "associating", "associated", "disassociating", "disassociated", "failing", "failed"
    #   resp.ipv_6_cidr_block_association.ipv_6_cidr_block_state.status_message #=> String
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateVpcCidrBlock AWS API Documentation
    #
    # @overload disassociate_vpc_cidr_block(params = {})
    # @param [Hash] params ({})
    def disassociate_vpc_cidr_block(params = {}, options = {})
      req = build_request(:disassociate_vpc_cidr_block, params)
      req.send_request(options)
    end

    # Enables a virtual private gateway (VGW) to propagate routes to the
    # specified route table of a VPC.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the virtual private gateway.
    #
    # @option params [required, String] :route_table_id
    #   The ID of the route table.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable route propagation
    #
    #   # This example enables the specified virtual private gateway to propagate static routes to the specified route table.
    #
    #   resp = client.enable_vgw_route_propagation({
    #     gateway_id: "vgw-9a4cacf3", 
    #     route_table_id: "rtb-22574640", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_vgw_route_propagation({
    #     gateway_id: "String", # required
    #     route_table_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVgwRoutePropagation AWS API Documentation
    #
    # @overload enable_vgw_route_propagation(params = {})
    # @param [Hash] params ({})
    def enable_vgw_route_propagation(params = {}, options = {})
      req = build_request(:enable_vgw_route_propagation, params)
      req.send_request(options)
    end

    # Enables I/O operations for a volume that had I/O operations disabled
    # because the data on the volume was potentially inconsistent.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable I/O for a volume
    #
    #   # This example enables I/O on volume ``vol-1234567890abcdef0``.
    #
    #   resp = client.enable_volume_io({
    #     volume_id: "vol-1234567890abcdef0", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_volume_io({
    #     dry_run: false,
    #     volume_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVolumeIO AWS API Documentation
    #
    # @overload enable_volume_io(params = {})
    # @param [Hash] params ({})
    def enable_volume_io(params = {}, options = {})
      req = build_request(:enable_volume_io, params)
      req.send_request(options)
    end

    # Enables a VPC for ClassicLink. You can then link EC2-Classic instances
    # to your ClassicLink-enabled VPC to allow communication over private IP
    # addresses. You cannot enable your VPC for ClassicLink if any of your
    # VPC's route tables have existing routes for address ranges within the
    # `10.0.0.0/8` IP address range, excluding local routes for VPCs in the
    # `10.0.0.0/16` and `10.1.0.0/16` IP address ranges. For more
    # information, see [ClassicLink][1] in the *Amazon Elastic Compute Cloud
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::EnableVpcClassicLinkResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableVpcClassicLinkResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_vpc_classic_link({
    #     dry_run: false,
    #     vpc_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVpcClassicLink AWS API Documentation
    #
    # @overload enable_vpc_classic_link(params = {})
    # @param [Hash] params ({})
    def enable_vpc_classic_link(params = {}, options = {})
      req = build_request(:enable_vpc_classic_link, params)
      req.send_request(options)
    end

    # Enables a VPC to support DNS hostname resolution for ClassicLink. If
    # enabled, the DNS hostname of a linked EC2-Classic instance resolves to
    # its private IP address when addressed from an instance in the VPC to
    # which it's linked. Similarly, the DNS hostname of an instance in a
    # VPC resolves to its private IP address when addressed from a linked
    # EC2-Classic instance. For more information about ClassicLink, see
    # [ClassicLink][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #
    # @option params [String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Types::EnableVpcClassicLinkDnsSupportResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableVpcClassicLinkDnsSupportResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_vpc_classic_link_dns_support({
    #     vpc_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVpcClassicLinkDnsSupport AWS API Documentation
    #
    # @overload enable_vpc_classic_link_dns_support(params = {})
    # @param [Hash] params ({})
    def enable_vpc_classic_link_dns_support(params = {}, options = {})
      req = build_request(:enable_vpc_classic_link_dns_support, params)
      req.send_request(options)
    end

    # Gets the console output for the specified instance.
    #
    # Instances do not have a physical monitor through which you can view
    # their console output. They also lack physical controls that allow you
    # to power up, reboot, or shut them down. To allow these actions, we
    # provide them through the Amazon EC2 API and command line interface.
    #
    # Instance console output is buffered and posted shortly after instance
    # boot, reboot, and termination. Amazon EC2 preserves the most recent 64
    # KB output which is available for at least one hour after the most
    # recent post.
    #
    # For Linux instances, the instance console output displays the exact
    # console output that would normally be displayed on a physical monitor
    # attached to a computer. This output is buffered because the instance
    # produces it and then posts it to a store where the instance's owner
    # can retrieve it.
    #
    # For Windows instances, the instance console output includes output
    # from the EC2Config service.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::GetConsoleOutputResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConsoleOutputResult#instance_id #instance_id} => String
    #   * {Types::GetConsoleOutputResult#output #output} => String
    #   * {Types::GetConsoleOutputResult#timestamp #timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_console_output({
    #     instance_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.output #=> String
    #   resp.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetConsoleOutput AWS API Documentation
    #
    # @overload get_console_output(params = {})
    # @param [Hash] params ({})
    def get_console_output(params = {}, options = {})
      req = build_request(:get_console_output, params)
      req.send_request(options)
    end

    # Retrieve a JPG-format screenshot of a running instance to help with
    # troubleshooting.
    #
    # The returned content is Base64-encoded.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [Boolean] :wake_up
    #   When set to `true`, acts as keystroke input and wakes up an instance
    #   that's in standby or "sleep" mode.
    #
    # @return [Types::GetConsoleScreenshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConsoleScreenshotResult#image_data #image_data} => String
    #   * {Types::GetConsoleScreenshotResult#instance_id #instance_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_console_screenshot({
    #     dry_run: false,
    #     instance_id: "String", # required
    #     wake_up: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.image_data #=> String
    #   resp.instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetConsoleScreenshot AWS API Documentation
    #
    # @overload get_console_screenshot(params = {})
    # @param [Hash] params ({})
    def get_console_screenshot(params = {}, options = {})
      req = build_request(:get_console_screenshot, params)
      req.send_request(options)
    end

    # Preview a reservation purchase with configurations that match those of
    # your Dedicated Host. You must have active Dedicated Hosts in your
    # account before you purchase a reservation.
    #
    # This is a preview of the PurchaseHostReservation action and does not
    # result in the offering being purchased.
    #
    # @option params [required, Array<String>] :host_id_set
    #   The ID/s of the Dedicated Host/s that the reservation will be
    #   associated with.
    #
    # @option params [required, String] :offering_id
    #   The offering ID of the reservation.
    #
    # @return [Types::GetHostReservationPurchasePreviewResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHostReservationPurchasePreviewResult#currency_code #currency_code} => String
    #   * {Types::GetHostReservationPurchasePreviewResult#purchase #purchase} => Array&lt;Types::Purchase&gt;
    #   * {Types::GetHostReservationPurchasePreviewResult#total_hourly_price #total_hourly_price} => String
    #   * {Types::GetHostReservationPurchasePreviewResult#total_upfront_price #total_upfront_price} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_host_reservation_purchase_preview({
    #     host_id_set: ["String"], # required
    #     offering_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.currency_code #=> String, one of "USD"
    #   resp.purchase #=> Array
    #   resp.purchase[0].currency_code #=> String, one of "USD"
    #   resp.purchase[0].duration #=> Integer
    #   resp.purchase[0].host_id_set #=> Array
    #   resp.purchase[0].host_id_set[0] #=> String
    #   resp.purchase[0].host_reservation_id #=> String
    #   resp.purchase[0].hourly_price #=> String
    #   resp.purchase[0].instance_family #=> String
    #   resp.purchase[0].payment_option #=> String, one of "AllUpfront", "PartialUpfront", "NoUpfront"
    #   resp.purchase[0].upfront_price #=> String
    #   resp.total_hourly_price #=> String
    #   resp.total_upfront_price #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetHostReservationPurchasePreview AWS API Documentation
    #
    # @overload get_host_reservation_purchase_preview(params = {})
    # @param [Hash] params ({})
    def get_host_reservation_purchase_preview(params = {}, options = {})
      req = build_request(:get_host_reservation_purchase_preview, params)
      req.send_request(options)
    end

    # Retrieves the encrypted administrator password for an instance running
    # Windows.
    #
    # The Windows password is generated at boot if the `EC2Config` service
    # plugin, `Ec2SetPassword`, is enabled. This usually only happens the
    # first time an AMI is launched, and then `Ec2SetPassword` is
    # automatically disabled. The password is not generated for rebundled
    # AMIs unless `Ec2SetPassword` is enabled before bundling.
    #
    # The password is encrypted using the key pair that you specified when
    # you launched the instance. You must provide the corresponding key pair
    # file.
    #
    # Password generation and encryption takes a few moments. We recommend
    # that you wait up to 15 minutes after launching an instance before
    # trying to retrieve the generated password.
    #
    # @option params [required, String] :instance_id
    #   The ID of the Windows instance.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::GetPasswordDataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPasswordDataResult#instance_id #instance_id} => String
    #   * {Types::GetPasswordDataResult#password_data #password_data} => String
    #   * {Types::GetPasswordDataResult#timestamp #timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_password_data({
    #     instance_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.password_data #=> String
    #   resp.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetPasswordData AWS API Documentation
    #
    # @overload get_password_data(params = {})
    # @param [Hash] params ({})
    def get_password_data(params = {}, options = {})
      req = build_request(:get_password_data, params)
      req.send_request(options)
    end

    # Returns details about the values and term of your specified
    # Convertible Reserved Instances. When a target configuration is
    # specified, it returns information about whether the exchange is valid
    # and can be performed.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<String>] :reserved_instance_ids
    #   The IDs of the Convertible Reserved Instances to exchange.
    #
    # @option params [Array<Types::TargetConfigurationRequest>] :target_configurations
    #   The configuration requirements of the Convertible Reserved Instances
    #   to exchange for your current Convertible Reserved Instances.
    #
    # @return [Types::GetReservedInstancesExchangeQuoteResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReservedInstancesExchangeQuoteResult#currency_code #currency_code} => String
    #   * {Types::GetReservedInstancesExchangeQuoteResult#is_valid_exchange #is_valid_exchange} => Boolean
    #   * {Types::GetReservedInstancesExchangeQuoteResult#output_reserved_instances_will_expire_at #output_reserved_instances_will_expire_at} => Time
    #   * {Types::GetReservedInstancesExchangeQuoteResult#payment_due #payment_due} => String
    #   * {Types::GetReservedInstancesExchangeQuoteResult#reserved_instance_value_rollup #reserved_instance_value_rollup} => Types::ReservationValue
    #   * {Types::GetReservedInstancesExchangeQuoteResult#reserved_instance_value_set #reserved_instance_value_set} => Array&lt;Types::ReservedInstanceReservationValue&gt;
    #   * {Types::GetReservedInstancesExchangeQuoteResult#target_configuration_value_rollup #target_configuration_value_rollup} => Types::ReservationValue
    #   * {Types::GetReservedInstancesExchangeQuoteResult#target_configuration_value_set #target_configuration_value_set} => Array&lt;Types::TargetReservationValue&gt;
    #   * {Types::GetReservedInstancesExchangeQuoteResult#validation_failure_reason #validation_failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reserved_instances_exchange_quote({
    #     dry_run: false,
    #     reserved_instance_ids: ["String"], # required
    #     target_configurations: [
    #       {
    #         instance_count: 1,
    #         offering_id: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.currency_code #=> String
    #   resp.is_valid_exchange #=> Boolean
    #   resp.output_reserved_instances_will_expire_at #=> Time
    #   resp.payment_due #=> String
    #   resp.reserved_instance_value_rollup.hourly_price #=> String
    #   resp.reserved_instance_value_rollup.remaining_total_value #=> String
    #   resp.reserved_instance_value_rollup.remaining_upfront_value #=> String
    #   resp.reserved_instance_value_set #=> Array
    #   resp.reserved_instance_value_set[0].reservation_value.hourly_price #=> String
    #   resp.reserved_instance_value_set[0].reservation_value.remaining_total_value #=> String
    #   resp.reserved_instance_value_set[0].reservation_value.remaining_upfront_value #=> String
    #   resp.reserved_instance_value_set[0].reserved_instance_id #=> String
    #   resp.target_configuration_value_rollup.hourly_price #=> String
    #   resp.target_configuration_value_rollup.remaining_total_value #=> String
    #   resp.target_configuration_value_rollup.remaining_upfront_value #=> String
    #   resp.target_configuration_value_set #=> Array
    #   resp.target_configuration_value_set[0].reservation_value.hourly_price #=> String
    #   resp.target_configuration_value_set[0].reservation_value.remaining_total_value #=> String
    #   resp.target_configuration_value_set[0].reservation_value.remaining_upfront_value #=> String
    #   resp.target_configuration_value_set[0].target_configuration.instance_count #=> Integer
    #   resp.target_configuration_value_set[0].target_configuration.offering_id #=> String
    #   resp.validation_failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetReservedInstancesExchangeQuote AWS API Documentation
    #
    # @overload get_reserved_instances_exchange_quote(params = {})
    # @param [Hash] params ({})
    def get_reserved_instances_exchange_quote(params = {}, options = {})
      req = build_request(:get_reserved_instances_exchange_quote, params)
      req.send_request(options)
    end

    # Import single or multi-volume disk images or EBS snapshots into an
    # Amazon Machine Image (AMI). For more information, see [Importing a VM
    # as an Image Using VM Import/Export][1] in the *VM Import/Export User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html
    #
    # @option params [String] :architecture
    #   The architecture of the virtual machine.
    #
    #   Valid values: `i386` \| `x86_64`
    #
    # @option params [Types::ClientData] :client_data
    #   The client-specific data.
    #
    # @option params [String] :client_token
    #   The token to enable idempotency for VM import requests.
    #
    # @option params [String] :description
    #   A description string for the import image task.
    #
    # @option params [Array<Types::ImageDiskContainer>] :disk_containers
    #   Information about the disk containers.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :hypervisor
    #   The target hypervisor platform.
    #
    #   Valid values: `xen`
    #
    # @option params [String] :license_type
    #   The license type to be used for the Amazon Machine Image (AMI) after
    #   importing.
    #
    #   **Note:** You may only use BYOL if you have existing licenses with
    #   rights to use these licenses in a third party cloud like AWS. For more
    #   information, see [Prerequisites][1] in the VM Import/Export User
    #   Guide.
    #
    #   Valid values: `AWS` \| `BYOL`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image
    #
    # @option params [String] :platform
    #   The operating system of the virtual machine.
    #
    #   Valid values: `Windows` \| `Linux`
    #
    # @option params [String] :role_name
    #   The name of the role to use when not using the default role,
    #   'vmimport'.
    #
    # @return [Types::ImportImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportImageResult#architecture #architecture} => String
    #   * {Types::ImportImageResult#description #description} => String
    #   * {Types::ImportImageResult#hypervisor #hypervisor} => String
    #   * {Types::ImportImageResult#image_id #image_id} => String
    #   * {Types::ImportImageResult#import_task_id #import_task_id} => String
    #   * {Types::ImportImageResult#license_type #license_type} => String
    #   * {Types::ImportImageResult#platform #platform} => String
    #   * {Types::ImportImageResult#progress #progress} => String
    #   * {Types::ImportImageResult#snapshot_details #snapshot_details} => Array&lt;Types::SnapshotDetail&gt;
    #   * {Types::ImportImageResult#status #status} => String
    #   * {Types::ImportImageResult#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_image({
    #     architecture: "String",
    #     client_data: {
    #       comment: "String",
    #       upload_end: Time.now,
    #       upload_size: 1.0,
    #       upload_start: Time.now,
    #     },
    #     client_token: "String",
    #     description: "String",
    #     disk_containers: [
    #       {
    #         description: "String",
    #         device_name: "String",
    #         format: "String",
    #         snapshot_id: "String",
    #         url: "String",
    #         user_bucket: {
    #           s3_bucket: "String",
    #           s3_key: "String",
    #         },
    #       },
    #     ],
    #     dry_run: false,
    #     hypervisor: "String",
    #     license_type: "String",
    #     platform: "String",
    #     role_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.architecture #=> String
    #   resp.description #=> String
    #   resp.hypervisor #=> String
    #   resp.image_id #=> String
    #   resp.import_task_id #=> String
    #   resp.license_type #=> String
    #   resp.platform #=> String
    #   resp.progress #=> String
    #   resp.snapshot_details #=> Array
    #   resp.snapshot_details[0].description #=> String
    #   resp.snapshot_details[0].device_name #=> String
    #   resp.snapshot_details[0].disk_image_size #=> Float
    #   resp.snapshot_details[0].format #=> String
    #   resp.snapshot_details[0].progress #=> String
    #   resp.snapshot_details[0].snapshot_id #=> String
    #   resp.snapshot_details[0].status #=> String
    #   resp.snapshot_details[0].status_message #=> String
    #   resp.snapshot_details[0].url #=> String
    #   resp.snapshot_details[0].user_bucket.s3_bucket #=> String
    #   resp.snapshot_details[0].user_bucket.s3_key #=> String
    #   resp.status #=> String
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportImage AWS API Documentation
    #
    # @overload import_image(params = {})
    # @param [Hash] params ({})
    def import_image(params = {}, options = {})
      req = build_request(:import_image, params)
      req.send_request(options)
    end

    # Creates an import instance task using metadata from the specified disk
    # image. `ImportInstance` only supports single-volume VMs. To import
    # multi-volume VMs, use ImportImage. For more information, see
    # [Importing a Virtual Machine Using the Amazon EC2 CLI][1].
    #
    # For information about the import manifest referenced by this API
    # action, see [VM Import Manifest][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html
    #
    # @option params [String] :description
    #   A description for the instance being imported.
    #
    # @option params [Array<Types::DiskImage>] :disk_images
    #   The disk image.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Types::ImportInstanceLaunchSpecification] :launch_specification
    #   The launch specification.
    #
    # @option params [required, String] :platform
    #   The instance operating system.
    #
    # @return [Types::ImportInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportInstanceResult#conversion_task #conversion_task} => Types::ConversionTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_instance({
    #     description: "String",
    #     disk_images: [
    #       {
    #         description: "String",
    #         image: {
    #           bytes: 1, # required
    #           format: "VMDK", # required, accepts VMDK, RAW, VHD
    #           import_manifest_url: "String", # required
    #         },
    #         volume: {
    #           size: 1, # required
    #         },
    #       },
    #     ],
    #     dry_run: false,
    #     launch_specification: {
    #       additional_info: "String",
    #       architecture: "i386", # accepts i386, x86_64
    #       group_ids: ["String"],
    #       group_names: ["String"],
    #       instance_initiated_shutdown_behavior: "stop", # accepts stop, terminate
    #       instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #       monitoring: false,
    #       placement: {
    #         availability_zone: "String",
    #         affinity: "String",
    #         group_name: "String",
    #         host_id: "String",
    #         tenancy: "default", # accepts default, dedicated, host
    #         spread_domain: "String",
    #       },
    #       private_ip_address: "String",
    #       subnet_id: "String",
    #       user_data: {
    #         data: "String",
    #       },
    #     },
    #     platform: "Windows", # required, accepts Windows
    #   })
    #
    # @example Response structure
    #
    #   resp.conversion_task.conversion_task_id #=> String
    #   resp.conversion_task.expiration_time #=> String
    #   resp.conversion_task.import_instance.description #=> String
    #   resp.conversion_task.import_instance.instance_id #=> String
    #   resp.conversion_task.import_instance.platform #=> String, one of "Windows"
    #   resp.conversion_task.import_instance.volumes #=> Array
    #   resp.conversion_task.import_instance.volumes[0].availability_zone #=> String
    #   resp.conversion_task.import_instance.volumes[0].bytes_converted #=> Integer
    #   resp.conversion_task.import_instance.volumes[0].description #=> String
    #   resp.conversion_task.import_instance.volumes[0].image.checksum #=> String
    #   resp.conversion_task.import_instance.volumes[0].image.format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.conversion_task.import_instance.volumes[0].image.import_manifest_url #=> String
    #   resp.conversion_task.import_instance.volumes[0].image.size #=> Integer
    #   resp.conversion_task.import_instance.volumes[0].status #=> String
    #   resp.conversion_task.import_instance.volumes[0].status_message #=> String
    #   resp.conversion_task.import_instance.volumes[0].volume.id #=> String
    #   resp.conversion_task.import_instance.volumes[0].volume.size #=> Integer
    #   resp.conversion_task.import_volume.availability_zone #=> String
    #   resp.conversion_task.import_volume.bytes_converted #=> Integer
    #   resp.conversion_task.import_volume.description #=> String
    #   resp.conversion_task.import_volume.image.checksum #=> String
    #   resp.conversion_task.import_volume.image.format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.conversion_task.import_volume.image.import_manifest_url #=> String
    #   resp.conversion_task.import_volume.image.size #=> Integer
    #   resp.conversion_task.import_volume.volume.id #=> String
    #   resp.conversion_task.import_volume.volume.size #=> Integer
    #   resp.conversion_task.state #=> String, one of "active", "cancelling", "cancelled", "completed"
    #   resp.conversion_task.status_message #=> String
    #   resp.conversion_task.tags #=> Array
    #   resp.conversion_task.tags[0].key #=> String
    #   resp.conversion_task.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportInstance AWS API Documentation
    #
    # @overload import_instance(params = {})
    # @param [Hash] params ({})
    def import_instance(params = {}, options = {})
      req = build_request(:import_instance, params)
      req.send_request(options)
    end

    # Imports the public key from an RSA key pair that you created with a
    # third-party tool. Compare this with CreateKeyPair, in which AWS
    # creates the key pair and gives the keys to you (AWS keeps a copy of
    # the public key). With ImportKeyPair, you create the key pair and give
    # AWS just the public key. The private key is never transferred between
    # you and AWS.
    #
    # For more information about key pairs, see [Key Pairs][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :key_name
    #   A unique name for the key pair.
    #
    # @option params [required, String, IO] :public_key_material
    #   The public key. For API calls, the text must be base64-encoded. For
    #   command line tools, base64 encoding is performed for you.
    #
    # @return [Types::ImportKeyPairResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportKeyPairResult#key_fingerprint #key_fingerprint} => String
    #   * {Types::ImportKeyPairResult#key_name #key_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_key_pair({
    #     dry_run: false,
    #     key_name: "String", # required
    #     public_key_material: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_fingerprint #=> String
    #   resp.key_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportKeyPair AWS API Documentation
    #
    # @overload import_key_pair(params = {})
    # @param [Hash] params ({})
    def import_key_pair(params = {}, options = {})
      req = build_request(:import_key_pair, params)
      req.send_request(options)
    end

    # Imports a disk into an EBS snapshot.
    #
    # @option params [Types::ClientData] :client_data
    #   The client-specific data.
    #
    # @option params [String] :client_token
    #   Token to enable idempotency for VM import requests.
    #
    # @option params [String] :description
    #   The description string for the import snapshot task.
    #
    # @option params [Types::SnapshotDiskContainer] :disk_container
    #   Information about the disk container.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :role_name
    #   The name of the role to use when not using the default role,
    #   'vmimport'.
    #
    # @return [Types::ImportSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportSnapshotResult#description #description} => String
    #   * {Types::ImportSnapshotResult#import_task_id #import_task_id} => String
    #   * {Types::ImportSnapshotResult#snapshot_task_detail #snapshot_task_detail} => Types::SnapshotTaskDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_snapshot({
    #     client_data: {
    #       comment: "String",
    #       upload_end: Time.now,
    #       upload_size: 1.0,
    #       upload_start: Time.now,
    #     },
    #     client_token: "String",
    #     description: "String",
    #     disk_container: {
    #       description: "String",
    #       format: "String",
    #       url: "String",
    #       user_bucket: {
    #         s3_bucket: "String",
    #         s3_key: "String",
    #       },
    #     },
    #     dry_run: false,
    #     role_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.import_task_id #=> String
    #   resp.snapshot_task_detail.description #=> String
    #   resp.snapshot_task_detail.disk_image_size #=> Float
    #   resp.snapshot_task_detail.format #=> String
    #   resp.snapshot_task_detail.progress #=> String
    #   resp.snapshot_task_detail.snapshot_id #=> String
    #   resp.snapshot_task_detail.status #=> String
    #   resp.snapshot_task_detail.status_message #=> String
    #   resp.snapshot_task_detail.url #=> String
    #   resp.snapshot_task_detail.user_bucket.s3_bucket #=> String
    #   resp.snapshot_task_detail.user_bucket.s3_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportSnapshot AWS API Documentation
    #
    # @overload import_snapshot(params = {})
    # @param [Hash] params ({})
    def import_snapshot(params = {}, options = {})
      req = build_request(:import_snapshot, params)
      req.send_request(options)
    end

    # Creates an import volume task using metadata from the specified disk
    # image.For more information, see [Importing Disks to Amazon EBS][1].
    #
    # For information about the import manifest referenced by this API
    # action, see [VM Import Manifest][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/importing-your-volumes-into-amazon-ebs.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html
    #
    # @option params [required, String] :availability_zone
    #   The Availability Zone for the resulting EBS volume.
    #
    # @option params [String] :description
    #   A description of the volume.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Types::DiskImageDetail] :image
    #   The disk image.
    #
    # @option params [required, Types::VolumeDetail] :volume
    #   The volume size.
    #
    # @return [Types::ImportVolumeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportVolumeResult#conversion_task #conversion_task} => Types::ConversionTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_volume({
    #     availability_zone: "String", # required
    #     description: "String",
    #     dry_run: false,
    #     image: { # required
    #       bytes: 1, # required
    #       format: "VMDK", # required, accepts VMDK, RAW, VHD
    #       import_manifest_url: "String", # required
    #     },
    #     volume: { # required
    #       size: 1, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.conversion_task.conversion_task_id #=> String
    #   resp.conversion_task.expiration_time #=> String
    #   resp.conversion_task.import_instance.description #=> String
    #   resp.conversion_task.import_instance.instance_id #=> String
    #   resp.conversion_task.import_instance.platform #=> String, one of "Windows"
    #   resp.conversion_task.import_instance.volumes #=> Array
    #   resp.conversion_task.import_instance.volumes[0].availability_zone #=> String
    #   resp.conversion_task.import_instance.volumes[0].bytes_converted #=> Integer
    #   resp.conversion_task.import_instance.volumes[0].description #=> String
    #   resp.conversion_task.import_instance.volumes[0].image.checksum #=> String
    #   resp.conversion_task.import_instance.volumes[0].image.format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.conversion_task.import_instance.volumes[0].image.import_manifest_url #=> String
    #   resp.conversion_task.import_instance.volumes[0].image.size #=> Integer
    #   resp.conversion_task.import_instance.volumes[0].status #=> String
    #   resp.conversion_task.import_instance.volumes[0].status_message #=> String
    #   resp.conversion_task.import_instance.volumes[0].volume.id #=> String
    #   resp.conversion_task.import_instance.volumes[0].volume.size #=> Integer
    #   resp.conversion_task.import_volume.availability_zone #=> String
    #   resp.conversion_task.import_volume.bytes_converted #=> Integer
    #   resp.conversion_task.import_volume.description #=> String
    #   resp.conversion_task.import_volume.image.checksum #=> String
    #   resp.conversion_task.import_volume.image.format #=> String, one of "VMDK", "RAW", "VHD"
    #   resp.conversion_task.import_volume.image.import_manifest_url #=> String
    #   resp.conversion_task.import_volume.image.size #=> Integer
    #   resp.conversion_task.import_volume.volume.id #=> String
    #   resp.conversion_task.import_volume.volume.size #=> Integer
    #   resp.conversion_task.state #=> String, one of "active", "cancelling", "cancelled", "completed"
    #   resp.conversion_task.status_message #=> String
    #   resp.conversion_task.tags #=> Array
    #   resp.conversion_task.tags[0].key #=> String
    #   resp.conversion_task.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportVolume AWS API Documentation
    #
    # @overload import_volume(params = {})
    # @param [Hash] params ({})
    def import_volume(params = {}, options = {})
      req = build_request(:import_volume, params)
      req.send_request(options)
    end

    # Modify the auto-placement setting of a Dedicated Host. When
    # auto-placement is enabled, AWS will place instances that you launch
    # with a tenancy of `host`, but without targeting a specific host ID,
    # onto any available Dedicated Host in your account which has
    # auto-placement enabled. When auto-placement is disabled, you need to
    # provide a host ID if you want the instance to launch onto a specific
    # host. If no host ID is provided, the instance will be launched onto a
    # suitable host which has auto-placement enabled.
    #
    # @option params [required, String] :auto_placement
    #   Specify whether to enable or disable auto-placement.
    #
    # @option params [required, Array<String>] :host_ids
    #   The host IDs of the Dedicated Hosts you want to modify.
    #
    # @return [Types::ModifyHostsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyHostsResult#successful #successful} => Array&lt;String&gt;
    #   * {Types::ModifyHostsResult#unsuccessful #unsuccessful} => Array&lt;Types::UnsuccessfulItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_hosts({
    #     auto_placement: "on", # required, accepts on, off
    #     host_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.successful #=> Array
    #   resp.successful[0] #=> String
    #   resp.unsuccessful #=> Array
    #   resp.unsuccessful[0].error.code #=> String
    #   resp.unsuccessful[0].error.message #=> String
    #   resp.unsuccessful[0].resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyHosts AWS API Documentation
    #
    # @overload modify_hosts(params = {})
    # @param [Hash] params ({})
    def modify_hosts(params = {}, options = {})
      req = build_request(:modify_hosts, params)
      req.send_request(options)
    end

    # Modifies the ID format for the specified resource on a per-region
    # basis. You can specify that resources should receive longer IDs
    # (17-character IDs) when they are created. The following resource types
    # support longer IDs: `instance` \| `reservation` \| `snapshot` \|
    # `volume`.
    #
    # This setting applies to the IAM user who makes the request; it does
    # not apply to the entire AWS account. By default, an IAM user defaults
    # to the same settings as the root user. If you're using this action as
    # the root user, then these settings apply to the entire account, unless
    # an IAM user explicitly overrides these settings for themselves. For
    # more information, see [Resource IDs][1] in the *Amazon Elastic Compute
    # Cloud User Guide*.
    #
    # Resources created with longer IDs are visible to all IAM roles and
    # users, regardless of these settings and provided that they have
    # permission to use the relevant `Describe` command for the resource
    # type.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html
    #
    # @option params [required, String] :resource
    #   The type of resource: `instance` \| `reservation` \| `snapshot` \|
    #   `volume`
    #
    # @option params [required, Boolean] :use_long_ids
    #   Indicate whether the resource should use longer IDs (17-character
    #   IDs).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_id_format({
    #     resource: "String", # required
    #     use_long_ids: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyIdFormat AWS API Documentation
    #
    # @overload modify_id_format(params = {})
    # @param [Hash] params ({})
    def modify_id_format(params = {}, options = {})
      req = build_request(:modify_id_format, params)
      req.send_request(options)
    end

    # Modifies the ID format of a resource for a specified IAM user, IAM
    # role, or the root user for an account; or all IAM users, IAM roles,
    # and the root user for an account. You can specify that resources
    # should receive longer IDs (17-character IDs) when they are created.
    #
    # The following resource types support longer IDs: `instance` \|
    # `reservation` \| `snapshot` \| `volume`. For more information, see
    # [Resource IDs][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    # This setting applies to the principal specified in the request; it
    # does not apply to the principal that makes the request.
    #
    # Resources created with longer IDs are visible to all IAM roles and
    # users, regardless of these settings and provided that they have
    # permission to use the relevant `Describe` command for the resource
    # type.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the principal, which can be an IAM user, IAM role, or the
    #   root user. Specify `all` to modify the ID format for all IAM users,
    #   IAM roles, and the root user of the account.
    #
    # @option params [required, String] :resource
    #   The type of resource: `instance` \| `reservation` \| `snapshot` \|
    #   `volume`
    #
    # @option params [required, Boolean] :use_long_ids
    #   Indicates whether the resource should use longer IDs (17-character
    #   IDs)
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_identity_id_format({
    #     principal_arn: "String", # required
    #     resource: "String", # required
    #     use_long_ids: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyIdentityIdFormat AWS API Documentation
    #
    # @overload modify_identity_id_format(params = {})
    # @param [Hash] params ({})
    def modify_identity_id_format(params = {}, options = {})
      req = build_request(:modify_identity_id_format, params)
      req.send_request(options)
    end

    # Modifies the specified attribute of the specified AMI. You can specify
    # only one attribute at a time.
    #
    # <note markdown="1"> AWS Marketplace product codes cannot be modified. Images with an AWS
    # Marketplace product code cannot be made public.
    #
    #  </note>
    #
    # <note markdown="1"> The SriovNetSupport enhanced networking attribute cannot be changed
    # using this command. Instead, enable SriovNetSupport on an instance and
    # create an AMI from the instance. This will result in an image with
    # SriovNetSupport enabled.
    #
    #  </note>
    #
    # @option params [String] :attribute
    #   The name of the attribute to modify.
    #
    # @option params [Types::AttributeValue] :description
    #   A description for the AMI.
    #
    # @option params [required, String] :image_id
    #   The ID of the AMI.
    #
    # @option params [Types::LaunchPermissionModifications] :launch_permission
    #   A launch permission modification.
    #
    # @option params [String] :operation_type
    #   The operation type.
    #
    # @option params [Array<String>] :product_codes
    #   One or more product codes. After you add a product code to an AMI, it
    #   can't be removed. This is only valid when modifying the
    #   `productCodes` attribute.
    #
    # @option params [Array<String>] :user_groups
    #   One or more user groups. This is only valid when modifying the
    #   `launchPermission` attribute.
    #
    # @option params [Array<String>] :user_ids
    #   One or more AWS account IDs. This is only valid when modifying the
    #   `launchPermission` attribute.
    #
    # @option params [String] :value
    #   The value of the attribute being modified. This is only valid when
    #   modifying the `description` attribute.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_image_attribute({
    #     attribute: "String",
    #     description: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     image_id: "String", # required
    #     launch_permission: {
    #       add: [
    #         {
    #           group: "all", # accepts all
    #           user_id: "String",
    #         },
    #       ],
    #       remove: [
    #         {
    #           group: "all", # accepts all
    #           user_id: "String",
    #         },
    #       ],
    #     },
    #     operation_type: "add", # accepts add, remove
    #     product_codes: ["String"],
    #     user_groups: ["String"],
    #     user_ids: ["String"],
    #     value: "String",
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyImageAttribute AWS API Documentation
    #
    # @overload modify_image_attribute(params = {})
    # @param [Hash] params ({})
    def modify_image_attribute(params = {}, options = {})
      req = build_request(:modify_image_attribute, params)
      req.send_request(options)
    end

    # Modifies the specified attribute of the specified instance. You can
    # specify only one attribute at a time.
    #
    # To modify some attributes, the instance must be stopped. For more
    # information, see [Modifying Attributes of a Stopped Instance][1] in
    # the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html
    #
    # @option params [Types::AttributeBooleanValue] :source_dest_check
    #   Specifies whether source/destination checking is enabled. A value of
    #   `true` means that checking is enabled, and `false` means checking is
    #   disabled. This value must be `false` for a NAT instance to perform
    #   NAT.
    #
    # @option params [String] :attribute
    #   The name of the attribute.
    #
    # @option params [Array<Types::InstanceBlockDeviceMappingSpecification>] :block_device_mappings
    #   Modifies the `DeleteOnTermination` attribute for volumes that are
    #   currently attached. The volume must be owned by the caller. If no
    #   value is specified for `DeleteOnTermination`, the default is `true`
    #   and the volume is deleted when the instance is terminated.
    #
    #   To add instance store volumes to an Amazon EBS-backed instance, you
    #   must add them when you launch the instance. For more information, see
    #   [Updating the Block Device Mapping when Launching an Instance][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM
    #
    # @option params [Types::AttributeBooleanValue] :disable_api_termination
    #   If the value is `true`, you can't terminate the instance using the
    #   Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use
    #   this parameter for Spot Instances.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Types::AttributeBooleanValue] :ebs_optimized
    #   Specifies whether the instance is optimized for EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal EBS I/O performance.
    #   This optimization isn't available with all instance types. Additional
    #   usage charges apply when using an EBS Optimized instance.
    #
    # @option params [Types::AttributeBooleanValue] :ena_support
    #   Set to `true` to enable enhanced networking with ENA for the instance.
    #
    #   This option is supported only for HVM instances. Specifying this
    #   option with a PV instance can make it unreachable.
    #
    # @option params [Array<String>] :groups
    #   \[EC2-VPC\] Changes the security groups of the instance. You must
    #   specify at least one security group, even if it's just the default
    #   security group for the VPC. You must specify the security group ID,
    #   not the security group name.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [Types::AttributeValue] :instance_initiated_shutdown_behavior
    #   Specifies whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #
    # @option params [Types::AttributeValue] :instance_type
    #   Changes the instance type to the specified value. For more
    #   information, see [Instance Types][1]. If the instance type is not
    #   valid, the error returned is `InvalidInstanceAttributeValue`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #
    # @option params [Types::AttributeValue] :kernel
    #   Changes the instance's kernel to the specified value. We recommend
    #   that you use PV-GRUB instead of kernels and RAM disks. For more
    #   information, see [PV-GRUB][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    #
    # @option params [Types::AttributeValue] :ramdisk
    #   Changes the instance's RAM disk to the specified value. We recommend
    #   that you use PV-GRUB instead of kernels and RAM disks. For more
    #   information, see [PV-GRUB][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    #
    # @option params [Types::AttributeValue] :sriov_net_support
    #   Set to `simple` to enable enhanced networking with the Intel 82599
    #   Virtual Function interface for the instance.
    #
    #   There is no way to disable enhanced networking with the Intel 82599
    #   Virtual Function interface at this time.
    #
    #   This option is supported only for HVM instances. Specifying this
    #   option with a PV instance can make it unreachable.
    #
    # @option params [Types::BlobAttributeValue] :user_data
    #   Changes the instance's user data to the specified value. If you are
    #   using an AWS SDK or command line tool, Base64-encoding is performed
    #   for you, and you can load the text from a file. Otherwise, you must
    #   provide Base64-encoded text.
    #
    # @option params [String] :value
    #   A new value for the attribute. Use only with the `kernel`, `ramdisk`,
    #   `userData`, `disableApiTermination`, or
    #   `instanceInitiatedShutdownBehavior` attribute.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_instance_attribute({
    #     source_dest_check: {
    #       value: false,
    #     },
    #     attribute: "instanceType", # accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         ebs: {
    #           delete_on_termination: false,
    #           volume_id: "String",
    #         },
    #         no_device: "String",
    #         virtual_name: "String",
    #       },
    #     ],
    #     disable_api_termination: {
    #       value: false,
    #     },
    #     dry_run: false,
    #     ebs_optimized: {
    #       value: false,
    #     },
    #     ena_support: {
    #       value: false,
    #     },
    #     groups: ["String"],
    #     instance_id: "String", # required
    #     instance_initiated_shutdown_behavior: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     instance_type: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     kernel: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     ramdisk: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     sriov_net_support: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     user_data: {
    #       value: "data",
    #     },
    #     value: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyInstanceAttribute AWS API Documentation
    #
    # @overload modify_instance_attribute(params = {})
    # @param [Hash] params ({})
    def modify_instance_attribute(params = {}, options = {})
      req = build_request(:modify_instance_attribute, params)
      req.send_request(options)
    end

    # Set the instance affinity value for a specific stopped instance and
    # modify the instance tenancy setting.
    #
    # Instance affinity is disabled by default. When instance affinity is
    # `host` and it is not associated with a specific Dedicated Host, the
    # next time it is launched it will automatically be associated with the
    # host it lands on. This relationship will persist if the instance is
    # stopped/started, or rebooted.
    #
    # You can modify the host ID associated with a stopped instance. If a
    # stopped instance has a new host ID association, the instance will
    # target that host when restarted.
    #
    # You can modify the tenancy of a stopped instance with a tenancy of
    # `host` or `dedicated`.
    #
    # Affinity, hostID, and tenancy are not required parameters, but at
    # least one of them must be specified in the request. Affinity and
    # tenancy can be modified in the same request, but tenancy can only be
    # modified on instances that are stopped.
    #
    # @option params [String] :affinity
    #   The new affinity setting for the instance.
    #
    # @option params [String] :host_id
    #   The ID of the Dedicated Host that the instance will have affinity
    #   with.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance that you are modifying.
    #
    # @option params [String] :tenancy
    #   The tenancy of the instance that you are modifying.
    #
    # @return [Types::ModifyInstancePlacementResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyInstancePlacementResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_instance_placement({
    #     affinity: "default", # accepts default, host
    #     host_id: "String",
    #     instance_id: "String", # required
    #     tenancy: "dedicated", # accepts dedicated, host
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyInstancePlacement AWS API Documentation
    #
    # @overload modify_instance_placement(params = {})
    # @param [Hash] params ({})
    def modify_instance_placement(params = {}, options = {})
      req = build_request(:modify_instance_placement, params)
      req.send_request(options)
    end

    # Modifies the specified network interface attribute. You can specify
    # only one attribute at a time.
    #
    # @option params [Types::NetworkInterfaceAttachmentChanges] :attachment
    #   Information about the interface attachment. If modifying the 'delete
    #   on termination' attribute, you must specify the ID of the interface
    #   attachment.
    #
    # @option params [Types::AttributeValue] :description
    #   A description for the network interface.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Array<String>] :groups
    #   Changes the security groups for the network interface. The new set of
    #   groups you specify replaces the current set. You must specify at least
    #   one group, even if it's just the default security group in the VPC.
    #   You must specify the ID of the security group, not the name.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @option params [Types::AttributeBooleanValue] :source_dest_check
    #   Indicates whether source/destination checking is enabled. A value of
    #   `true` means checking is enabled, and `false` means checking is
    #   disabled. This value must be `false` for a NAT instance to perform
    #   NAT. For more information, see [NAT Instances][1] in the *Amazon
    #   Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To modify the attachment attribute of a network interface
    #
    #   # This example modifies the attachment attribute of the specified network interface.
    #
    #   resp = client.modify_network_interface_attribute({
    #     attachment: {
    #       attachment_id: "eni-attach-43348162", 
    #       delete_on_termination: false, 
    #     }, 
    #     network_interface_id: "eni-686ea200", 
    #   })
    #
    # @example Example: To modify the description attribute of a network interface
    #
    #   # This example modifies the description attribute of the specified network interface.
    #
    #   resp = client.modify_network_interface_attribute({
    #     description: {
    #       value: "My description", 
    #     }, 
    #     network_interface_id: "eni-686ea200", 
    #   })
    #
    # @example Example: To modify the groupSet attribute of a network interface
    #
    #   # This example command modifies the groupSet attribute of the specified network interface.
    #
    #   resp = client.modify_network_interface_attribute({
    #     groups: [
    #       "sg-903004f8", 
    #       "sg-1a2b3c4d", 
    #     ], 
    #     network_interface_id: "eni-686ea200", 
    #   })
    #
    # @example Example: To modify the sourceDestCheck attribute of a network interface
    #
    #   # This example command modifies the sourceDestCheck attribute of the specified network interface.
    #
    #   resp = client.modify_network_interface_attribute({
    #     network_interface_id: "eni-686ea200", 
    #     source_dest_check: {
    #       value: false, 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_network_interface_attribute({
    #     attachment: {
    #       attachment_id: "String",
    #       delete_on_termination: false,
    #     },
    #     description: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     dry_run: false,
    #     groups: ["String"],
    #     network_interface_id: "String", # required
    #     source_dest_check: {
    #       value: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyNetworkInterfaceAttribute AWS API Documentation
    #
    # @overload modify_network_interface_attribute(params = {})
    # @param [Hash] params ({})
    def modify_network_interface_attribute(params = {}, options = {})
      req = build_request(:modify_network_interface_attribute, params)
      req.send_request(options)
    end

    # Modifies the Availability Zone, instance count, instance type, or
    # network platform (EC2-Classic or EC2-VPC) of your Standard Reserved
    # Instances. The Reserved Instances to be modified must be identical,
    # except for Availability Zone, network platform, and instance type.
    #
    # For more information, see [Modifying Reserved Instances][1] in the
    # Amazon Elastic Compute Cloud User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html
    #
    # @option params [required, Array<String>] :reserved_instances_ids
    #   The IDs of the Reserved Instances to modify.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token you provide to ensure idempotency of
    #   your modification request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Array<Types::ReservedInstancesConfiguration>] :target_configurations
    #   The configuration settings for the Reserved Instances to modify.
    #
    # @return [Types::ModifyReservedInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReservedInstancesResult#reserved_instances_modification_id #reserved_instances_modification_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_reserved_instances({
    #     reserved_instances_ids: ["String"], # required
    #     client_token: "String",
    #     target_configurations: [ # required
    #       {
    #         availability_zone: "String",
    #         instance_count: 1,
    #         instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #         platform: "String",
    #         scope: "Availability Zone", # accepts Availability Zone, Region
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instances_modification_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyReservedInstances AWS API Documentation
    #
    # @overload modify_reserved_instances(params = {})
    # @param [Hash] params ({})
    def modify_reserved_instances(params = {}, options = {})
      req = build_request(:modify_reserved_instances, params)
      req.send_request(options)
    end

    # Adds or removes permission settings for the specified snapshot. You
    # may add or remove specified AWS account IDs from a snapshot's list of
    # create volume permissions, but you cannot do both in a single API
    # call. If you need to both add and remove account IDs for a snapshot,
    # you must use multiple API calls.
    #
    # <note markdown="1"> Encrypted snapshots and snapshots with AWS Marketplace product codes
    # cannot be made public. Snapshots encrypted with your default CMK
    # cannot be shared with other accounts.
    #
    #  </note>
    #
    # For more information on modifying snapshot permissions, see [Sharing
    # Snapshots][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html
    #
    # @option params [String] :attribute
    #   The snapshot attribute to modify.
    #
    #   <note markdown="1"> Only volume creation permissions may be modified at the customer
    #   level.
    #
    #    </note>
    #
    # @option params [Types::CreateVolumePermissionModifications] :create_volume_permission
    #   A JSON representation of the snapshot attribute modification.
    #
    # @option params [Array<String>] :group_names
    #   The group to modify for the snapshot.
    #
    # @option params [String] :operation_type
    #   The type of operation to perform to the attribute.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the snapshot.
    #
    # @option params [Array<String>] :user_ids
    #   The account ID to modify for the snapshot.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To modify a snapshot attribute
    #
    #   # This example modifies snapshot ``snap-1234567890abcdef0`` to remove the create volume permission for a user with the account ID ``123456789012``. If the command succeeds, no output is returned.
    #
    #   resp = client.modify_snapshot_attribute({
    #     attribute: "createVolumePermission", 
    #     operation_type: "remove", 
    #     snapshot_id: "snap-1234567890abcdef0", 
    #     user_ids: [
    #       "123456789012", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: To make a snapshot public
    #
    #   # This example makes the snapshot ``snap-1234567890abcdef0`` public.
    #
    #   resp = client.modify_snapshot_attribute({
    #     attribute: "createVolumePermission", 
    #     group_names: [
    #       "all", 
    #     ], 
    #     operation_type: "add", 
    #     snapshot_id: "snap-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_snapshot_attribute({
    #     attribute: "productCodes", # accepts productCodes, createVolumePermission
    #     create_volume_permission: {
    #       add: [
    #         {
    #           group: "all", # accepts all
    #           user_id: "String",
    #         },
    #       ],
    #       remove: [
    #         {
    #           group: "all", # accepts all
    #           user_id: "String",
    #         },
    #       ],
    #     },
    #     group_names: ["String"],
    #     operation_type: "add", # accepts add, remove
    #     snapshot_id: "String", # required
    #     user_ids: ["String"],
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySnapshotAttribute AWS API Documentation
    #
    # @overload modify_snapshot_attribute(params = {})
    # @param [Hash] params ({})
    def modify_snapshot_attribute(params = {}, options = {})
      req = build_request(:modify_snapshot_attribute, params)
      req.send_request(options)
    end

    # Modifies the specified Spot fleet request.
    #
    # While the Spot fleet request is being modified, it is in the
    # `modifying` state.
    #
    # To scale up your Spot fleet, increase its target capacity. The Spot
    # fleet launches the additional Spot instances according to the
    # allocation strategy for the Spot fleet request. If the allocation
    # strategy is `lowestPrice`, the Spot fleet launches instances using the
    # Spot pool with the lowest price. If the allocation strategy is
    # `diversified`, the Spot fleet distributes the instances across the
    # Spot pools.
    #
    # To scale down your Spot fleet, decrease its target capacity. First,
    # the Spot fleet cancels any open bids that exceed the new target
    # capacity. You can request that the Spot fleet terminate Spot instances
    # until the size of the fleet no longer exceeds the new target capacity.
    # If the allocation strategy is `lowestPrice`, the Spot fleet terminates
    # the instances with the highest price per unit. If the allocation
    # strategy is `diversified`, the Spot fleet terminates instances across
    # the Spot pools. Alternatively, you can request that the Spot fleet
    # keep the fleet at its current size, but not replace any Spot instances
    # that are interrupted or that you terminate manually.
    #
    # @option params [String] :excess_capacity_termination_policy
    #   Indicates whether running Spot instances should be terminated if the
    #   target capacity of the Spot fleet request is decreased below the
    #   current size of the Spot fleet.
    #
    # @option params [required, String] :spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #
    # @option params [Integer] :target_capacity
    #   The size of the fleet.
    #
    # @return [Types::ModifySpotFleetRequestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifySpotFleetRequestResponse#return #return} => Boolean
    #
    #
    # @example Example: To increase the target capacity of a Spot fleet request
    #
    #   # This example increases the target capacity of the specified Spot fleet request.
    #
    #   resp = client.modify_spot_fleet_request({
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #     target_capacity: 20, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     return: true, 
    #   }
    #
    # @example Example: To decrease the target capacity of a Spot fleet request
    #
    #   # This example decreases the target capacity of the specified Spot fleet request without terminating any Spot Instances as a result.
    #
    #   resp = client.modify_spot_fleet_request({
    #     excess_capacity_termination_policy: "NoTermination ", 
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #     target_capacity: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     return: true, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_spot_fleet_request({
    #     excess_capacity_termination_policy: "noTermination", # accepts noTermination, default
    #     spot_fleet_request_id: "String", # required
    #     target_capacity: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySpotFleetRequest AWS API Documentation
    #
    # @overload modify_spot_fleet_request(params = {})
    # @param [Hash] params ({})
    def modify_spot_fleet_request(params = {}, options = {})
      req = build_request(:modify_spot_fleet_request, params)
      req.send_request(options)
    end

    # Modifies a subnet attribute. You can only modify one attribute at a
    # time.
    #
    # @option params [Types::AttributeBooleanValue] :assign_ipv_6_address_on_creation
    #   Specify `true` to indicate that network interfaces created in the
    #   specified subnet should be assigned an IPv6 address. This includes a
    #   network interface that's created when launching an instance into the
    #   subnet (the instance therefore receives an IPv6 address).
    #
    #   If you enable the IPv6 addressing feature for your subnet, your
    #   network interface or instance only receives an IPv6 address if it's
    #   created using version `2016-11-15` or later of the Amazon EC2 API.
    #
    # @option params [Types::AttributeBooleanValue] :map_public_ip_on_launch
    #   Specify `true` to indicate that network interfaces created in the
    #   specified subnet should be assigned a public IPv4 address. This
    #   includes a network interface that's created when launching an
    #   instance into the subnet (the instance therefore receives a public
    #   IPv4 address).
    #
    # @option params [required, String] :subnet_id
    #   The ID of the subnet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To change a subnet's public IP addressing behavior
    #
    #   # This example modifies the specified subnet so that all instances launched into this subnet are assigned a public IP address.
    #
    #   resp = client.modify_subnet_attribute({
    #     map_public_ip_on_launch: {
    #       value: true, 
    #     }, 
    #     subnet_id: "subnet-1a2b3c4d", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_subnet_attribute({
    #     assign_ipv_6_address_on_creation: {
    #       value: false,
    #     },
    #     map_public_ip_on_launch: {
    #       value: false,
    #     },
    #     subnet_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySubnetAttribute AWS API Documentation
    #
    # @overload modify_subnet_attribute(params = {})
    # @param [Hash] params ({})
    def modify_subnet_attribute(params = {}, options = {})
      req = build_request(:modify_subnet_attribute, params)
      req.send_request(options)
    end

    # You can modify several parameters of an existing EBS volume, including
    # volume size, volume type, and IOPS capacity. If your EBS volume is
    # attached to a current-generation EC2 instance type, you may be able to
    # apply these changes without stopping the instance or detaching the
    # volume from it. For more information about modifying an EBS volume
    # running Linux, see [Modifying the Size, IOPS, or Type of an EBS Volume
    # on Linux][1]. For more information about modifying an EBS volume
    # running Windows, see [Modifying the Size, IOPS, or Type of an EBS
    # Volume on Windows][2].
    #
    # When you complete a resize operation on your volume, you need to
    # extend the volume's file-system size to take advantage of the new
    # storage capacity. For information about extending a Linux file system,
    # see [Extending a Linux File System][3]. For information about
    # extending a Windows file system, see [Extending a Windows File
    # System][4].
    #
    # You can use CloudWatch Events to check the status of a modification to
    # an EBS volume. For information about CloudWatch Events, see the
    # [Amazon CloudWatch Events User Guide][5]. You can also track the
    # status of a modification using the DescribeVolumesModifications API.
    # For information about tracking status changes using either method, see
    # [Monitoring Volume Modifications][6].
    #
    # <note markdown="1"> With previous-generation instance types, resizing an EBS volume may
    # require detaching and reattaching the volume or stopping and
    # restarting the instance. For more information about modifying an EBS
    # volume running Linux, see [Modifying the Size, IOPS, or Type of an EBS
    # Volume on Linux][1]. For more information about modifying an EBS
    # volume running Windows, see [Modifying the Size, IOPS, or Type of an
    # EBS Volume on Windows][2].
    #
    #  </note>
    #
    # <note markdown="1"> If you reach the maximum volume modification rate per volume limit,
    # you will need to wait at least six hours before applying further
    # modifications to the affected EBS volume.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html
    # [3]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux
    # [4]: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows
    # [5]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/
    # [6]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :volume_id
    #
    # @option params [Integer] :size
    #   Target size in GiB of the volume to be modified. Target volume size
    #   must be greater than or equal to than the existing size of the volume.
    #   For information about available EBS volume sizes, see
    #   [http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html][1].
    #
    #   Default: If no size is specified, the existing size is retained.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #
    # @option params [String] :volume_type
    #   Target EBS volume type of the volume to be modified
    #
    #   The API does not support modifications for volume type `standard`. You
    #   also cannot change the type of a volume to `standard`.
    #
    #   Default: If no type is specified, the existing type is retained.
    #
    # @option params [Integer] :iops
    #   Target IOPS rate of the volume to be modified.
    #
    #   Only valid for Provisioned IOPS SSD (`io1`) volumes. For more
    #   information about `io1` IOPS configuration, see
    #   [http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes\_piops][1].
    #
    #   Default: If no IOPS value is specified, the existing value is
    #   retained.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes_piops
    #
    # @return [Types::ModifyVolumeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyVolumeResult#volume_modification #volume_modification} => Types::VolumeModification
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_volume({
    #     dry_run: false,
    #     volume_id: "String", # required
    #     size: 1,
    #     volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #     iops: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_modification.volume_id #=> String
    #   resp.volume_modification.modification_state #=> String, one of "modifying", "optimizing", "completed", "failed"
    #   resp.volume_modification.status_message #=> String
    #   resp.volume_modification.target_size #=> Integer
    #   resp.volume_modification.target_iops #=> Integer
    #   resp.volume_modification.target_volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.volume_modification.original_size #=> Integer
    #   resp.volume_modification.original_iops #=> Integer
    #   resp.volume_modification.original_volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.volume_modification.progress #=> Integer
    #   resp.volume_modification.start_time #=> Time
    #   resp.volume_modification.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVolume AWS API Documentation
    #
    # @overload modify_volume(params = {})
    # @param [Hash] params ({})
    def modify_volume(params = {}, options = {})
      req = build_request(:modify_volume, params)
      req.send_request(options)
    end

    # Modifies a volume attribute.
    #
    # By default, all I/O operations for the volume are suspended when the
    # data on the volume is determined to be potentially inconsistent, to
    # prevent undetectable, latent data corruption. The I/O access to the
    # volume can be resumed by first enabling I/O access and then checking
    # the data consistency on your volume.
    #
    # You can change the default behavior to resume I/O operations. We
    # recommend that you change this only for boot volumes or for volumes
    # that are stateless or disposable.
    #
    # @option params [Types::AttributeBooleanValue] :auto_enable_io
    #   Indicates whether the volume should be auto-enabled for I/O
    #   operations.
    #
    # @option params [required, String] :volume_id
    #   The ID of the volume.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To modify a volume attribute
    #
    #   # This example sets the ``autoEnableIo`` attribute of the volume with the ID ``vol-1234567890abcdef0`` to ``true``. If the command succeeds, no output is returned.
    #
    #   resp = client.modify_volume_attribute({
    #     auto_enable_io: {
    #       value: true, 
    #     }, 
    #     dry_run: true, 
    #     volume_id: "vol-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_volume_attribute({
    #     auto_enable_io: {
    #       value: false,
    #     },
    #     volume_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVolumeAttribute AWS API Documentation
    #
    # @overload modify_volume_attribute(params = {})
    # @param [Hash] params ({})
    def modify_volume_attribute(params = {}, options = {})
      req = build_request(:modify_volume_attribute, params)
      req.send_request(options)
    end

    # Modifies the specified attribute of the specified VPC.
    #
    # @option params [Types::AttributeBooleanValue] :enable_dns_hostnames
    #   Indicates whether the instances launched in the VPC get DNS hostnames.
    #   If enabled, instances in the VPC get DNS hostnames; otherwise, they do
    #   not.
    #
    #   You cannot modify the DNS resolution and DNS hostnames attributes in
    #   the same request. Use separate requests for each attribute. You can
    #   only enable DNS hostnames if you've enabled DNS support.
    #
    # @option params [Types::AttributeBooleanValue] :enable_dns_support
    #   Indicates whether the DNS resolution is supported for the VPC. If
    #   enabled, queries to the Amazon provided DNS server at the
    #   169.254.169.253 IP address, or the reserved IP address at the base of
    #   the VPC network range "plus two" will succeed. If disabled, the
    #   Amazon provided DNS service in the VPC that resolves public DNS
    #   hostnames to IP addresses is not enabled.
    #
    #   You cannot modify the DNS resolution and DNS hostnames attributes in
    #   the same request. Use separate requests for each attribute.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To modify the enableDnsSupport attribute
    #
    #   # This example modifies the enableDnsSupport attribute. This attribute indicates whether DNS resolution is enabled for the VPC. If this attribute is true, the Amazon DNS server resolves DNS hostnames for instances in the VPC to their corresponding IP addresses; otherwise, it does not.
    #
    #   resp = client.modify_vpc_attribute({
    #     enable_dns_support: {
    #       value: false, 
    #     }, 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    # @example Example: To modify the enableDnsHostnames attribute
    #
    #   # This example modifies the enableDnsHostnames attribute. This attribute indicates whether instances launched in the VPC get DNS hostnames. If this attribute is true, instances in the VPC get DNS hostnames; otherwise, they do not.
    #
    #   resp = client.modify_vpc_attribute({
    #     enable_dns_hostnames: {
    #       value: false, 
    #     }, 
    #     vpc_id: "vpc-a01106c2", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_vpc_attribute({
    #     enable_dns_hostnames: {
    #       value: false,
    #     },
    #     enable_dns_support: {
    #       value: false,
    #     },
    #     vpc_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcAttribute AWS API Documentation
    #
    # @overload modify_vpc_attribute(params = {})
    # @param [Hash] params ({})
    def modify_vpc_attribute(params = {}, options = {})
      req = build_request(:modify_vpc_attribute, params)
      req.send_request(options)
    end

    # Modifies attributes of a specified VPC endpoint. You can modify the
    # policy associated with the endpoint, and you can add and remove route
    # tables associated with the endpoint.
    #
    # @option params [Array<String>] :add_route_table_ids
    #   One or more route tables IDs to associate with the endpoint.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :policy_document
    #   A policy document to attach to the endpoint. The policy must be in
    #   valid JSON format.
    #
    # @option params [Array<String>] :remove_route_table_ids
    #   One or more route table IDs to disassociate from the endpoint.
    #
    # @option params [Boolean] :reset_policy
    #   Specify `true` to reset the policy document to the default policy. The
    #   default policy allows access to the service.
    #
    # @option params [required, String] :vpc_endpoint_id
    #   The ID of the endpoint.
    #
    # @return [Types::ModifyVpcEndpointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyVpcEndpointResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_vpc_endpoint({
    #     add_route_table_ids: ["String"],
    #     dry_run: false,
    #     policy_document: "String",
    #     remove_route_table_ids: ["String"],
    #     reset_policy: false,
    #     vpc_endpoint_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcEndpoint AWS API Documentation
    #
    # @overload modify_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def modify_vpc_endpoint(params = {}, options = {})
      req = build_request(:modify_vpc_endpoint, params)
      req.send_request(options)
    end

    # Modifies the VPC peering connection options on one side of a VPC
    # peering connection. You can do the following:
    #
    # * Enable/disable communication over the peering connection between an
    #   EC2-Classic instance that's linked to your VPC (using ClassicLink)
    #   and instances in the peer VPC.
    #
    # * Enable/disable communication over the peering connection between
    #   instances in your VPC and an EC2-Classic instance that's linked to
    #   the peer VPC.
    #
    # * Enable/disable a local VPC to resolve public DNS hostnames to
    #   private IP addresses when queried from instances in the peer VPC.
    #
    # If the peered VPCs are in different accounts, each owner must initiate
    # a separate request to modify the peering connection options, depending
    # on whether their VPC was the requester or accepter for the VPC peering
    # connection. If the peered VPCs are in the same account, you can modify
    # the requester and accepter options in the same request. To confirm
    # which VPC is the accepter and requester for a VPC peering connection,
    # use the DescribeVpcPeeringConnections command.
    #
    # @option params [Types::PeeringConnectionOptionsRequest] :accepter_peering_connection_options
    #   The VPC peering connection options for the accepter VPC.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Types::PeeringConnectionOptionsRequest] :requester_peering_connection_options
    #   The VPC peering connection options for the requester VPC.
    #
    # @option params [required, String] :vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #
    # @return [Types::ModifyVpcPeeringConnectionOptionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyVpcPeeringConnectionOptionsResult#accepter_peering_connection_options #accepter_peering_connection_options} => Types::PeeringConnectionOptions
    #   * {Types::ModifyVpcPeeringConnectionOptionsResult#requester_peering_connection_options #requester_peering_connection_options} => Types::PeeringConnectionOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_vpc_peering_connection_options({
    #     accepter_peering_connection_options: {
    #       allow_dns_resolution_from_remote_vpc: false,
    #       allow_egress_from_local_classic_link_to_remote_vpc: false,
    #       allow_egress_from_local_vpc_to_remote_classic_link: false,
    #     },
    #     dry_run: false,
    #     requester_peering_connection_options: {
    #       allow_dns_resolution_from_remote_vpc: false,
    #       allow_egress_from_local_classic_link_to_remote_vpc: false,
    #       allow_egress_from_local_vpc_to_remote_classic_link: false,
    #     },
    #     vpc_peering_connection_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accepter_peering_connection_options.allow_dns_resolution_from_remote_vpc #=> Boolean
    #   resp.accepter_peering_connection_options.allow_egress_from_local_classic_link_to_remote_vpc #=> Boolean
    #   resp.accepter_peering_connection_options.allow_egress_from_local_vpc_to_remote_classic_link #=> Boolean
    #   resp.requester_peering_connection_options.allow_dns_resolution_from_remote_vpc #=> Boolean
    #   resp.requester_peering_connection_options.allow_egress_from_local_classic_link_to_remote_vpc #=> Boolean
    #   resp.requester_peering_connection_options.allow_egress_from_local_vpc_to_remote_classic_link #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcPeeringConnectionOptions AWS API Documentation
    #
    # @overload modify_vpc_peering_connection_options(params = {})
    # @param [Hash] params ({})
    def modify_vpc_peering_connection_options(params = {}, options = {})
      req = build_request(:modify_vpc_peering_connection_options, params)
      req.send_request(options)
    end

    # Enables detailed monitoring for a running instance. Otherwise, basic
    # monitoring is enabled. For more information, see [Monitoring Your
    # Instances and Volumes][1] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    # To disable detailed monitoring, see .
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html
    #
    # @option params [required, Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::MonitorInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MonitorInstancesResult#instance_monitorings #instance_monitorings} => Array&lt;Types::InstanceMonitoring&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.monitor_instances({
    #     instance_ids: ["String"], # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_monitorings #=> Array
    #   resp.instance_monitorings[0].instance_id #=> String
    #   resp.instance_monitorings[0].monitoring.state #=> String, one of "disabled", "disabling", "enabled", "pending"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MonitorInstances AWS API Documentation
    #
    # @overload monitor_instances(params = {})
    # @param [Hash] params ({})
    def monitor_instances(params = {}, options = {})
      req = build_request(:monitor_instances, params)
      req.send_request(options)
    end

    # Moves an Elastic IP address from the EC2-Classic platform to the
    # EC2-VPC platform. The Elastic IP address must be allocated to your
    # account for more than 24 hours, and it must not be associated with an
    # instance. After the Elastic IP address is moved, it is no longer
    # available for use in the EC2-Classic platform, unless you move it back
    # using the RestoreAddressToClassic request. You cannot move an Elastic
    # IP address that was originally allocated for use in the EC2-VPC
    # platform to the EC2-Classic platform.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :public_ip
    #   The Elastic IP address.
    #
    # @return [Types::MoveAddressToVpcResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MoveAddressToVpcResult#allocation_id #allocation_id} => String
    #   * {Types::MoveAddressToVpcResult#status #status} => String
    #
    #
    # @example Example: To move an address to EC2-VPC
    #
    #   # This example moves the specified Elastic IP address to the EC2-VPC platform.
    #
    #   resp = client.move_address_to_vpc({
    #     public_ip: "54.123.4.56", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     status: "MoveInProgress", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.move_address_to_vpc({
    #     dry_run: false,
    #     public_ip: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.allocation_id #=> String
    #   resp.status #=> String, one of "MoveInProgress", "InVpc", "InClassic"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MoveAddressToVpc AWS API Documentation
    #
    # @overload move_address_to_vpc(params = {})
    # @param [Hash] params ({})
    def move_address_to_vpc(params = {}, options = {})
      req = build_request(:move_address_to_vpc, params)
      req.send_request(options)
    end

    # Purchase a reservation with configurations that match those of your
    # Dedicated Host. You must have active Dedicated Hosts in your account
    # before you purchase a reservation. This action results in the
    # specified reservation being purchased and charged to your account.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency of
    #   the request. For more information, see [How to Ensure Idempotency][1]
    #   in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [String] :currency_code
    #   The currency in which the `totalUpfrontPrice`, `LimitPrice`, and
    #   `totalHourlyPrice` amounts are specified. At this time, the only
    #   supported currency is `USD`.
    #
    # @option params [required, Array<String>] :host_id_set
    #   The ID/s of the Dedicated Host/s that the reservation will be
    #   associated with.
    #
    # @option params [String] :limit_price
    #   The specified limit is checked against the total upfront cost of the
    #   reservation (calculated as the offering's upfront cost multiplied by
    #   the host count). If the total upfront cost is greater than the
    #   specified price limit, the request will fail. This is used to ensure
    #   that the purchase does not exceed the expected upfront cost of the
    #   purchase. At this time, the only supported currency is `USD`. For
    #   example, to indicate a limit price of USD 100, specify 100.00.
    #
    # @option params [required, String] :offering_id
    #   The ID of the offering.
    #
    # @return [Types::PurchaseHostReservationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseHostReservationResult#client_token #client_token} => String
    #   * {Types::PurchaseHostReservationResult#currency_code #currency_code} => String
    #   * {Types::PurchaseHostReservationResult#purchase #purchase} => Array&lt;Types::Purchase&gt;
    #   * {Types::PurchaseHostReservationResult#total_hourly_price #total_hourly_price} => String
    #   * {Types::PurchaseHostReservationResult#total_upfront_price #total_upfront_price} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_host_reservation({
    #     client_token: "String",
    #     currency_code: "USD", # accepts USD
    #     host_id_set: ["String"], # required
    #     limit_price: "String",
    #     offering_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.currency_code #=> String, one of "USD"
    #   resp.purchase #=> Array
    #   resp.purchase[0].currency_code #=> String, one of "USD"
    #   resp.purchase[0].duration #=> Integer
    #   resp.purchase[0].host_id_set #=> Array
    #   resp.purchase[0].host_id_set[0] #=> String
    #   resp.purchase[0].host_reservation_id #=> String
    #   resp.purchase[0].hourly_price #=> String
    #   resp.purchase[0].instance_family #=> String
    #   resp.purchase[0].payment_option #=> String, one of "AllUpfront", "PartialUpfront", "NoUpfront"
    #   resp.purchase[0].upfront_price #=> String
    #   resp.total_hourly_price #=> String
    #   resp.total_upfront_price #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseHostReservation AWS API Documentation
    #
    # @overload purchase_host_reservation(params = {})
    # @param [Hash] params ({})
    def purchase_host_reservation(params = {}, options = {})
      req = build_request(:purchase_host_reservation, params)
      req.send_request(options)
    end

    # Purchases a Reserved Instance for use with your account. With Reserved
    # Instances, you pay a lower hourly rate compared to On-Demand instance
    # pricing.
    #
    # Use DescribeReservedInstancesOfferings to get a list of Reserved
    # Instance offerings that match your specifications. After you've
    # purchased a Reserved Instance, you can check for your new Reserved
    # Instance with DescribeReservedInstances.
    #
    # For more information, see [Reserved Instances][1] and [Reserved
    # Instance Marketplace][2] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
    #
    # @option params [required, Integer] :instance_count
    #   The number of Reserved Instances to purchase.
    #
    # @option params [required, String] :reserved_instances_offering_id
    #   The ID of the Reserved Instance offering to purchase.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Types::ReservedInstanceLimitPrice] :limit_price
    #   Specified for Reserved Instance Marketplace offerings to limit the
    #   total order and ensure that the Reserved Instances are not purchased
    #   at unexpected prices.
    #
    # @return [Types::PurchaseReservedInstancesOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseReservedInstancesOfferingResult#reserved_instances_id #reserved_instances_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_instances_offering({
    #     instance_count: 1, # required
    #     reserved_instances_offering_id: "String", # required
    #     dry_run: false,
    #     limit_price: {
    #       amount: 1.0,
    #       currency_code: "USD", # accepts USD
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_instances_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseReservedInstancesOffering AWS API Documentation
    #
    # @overload purchase_reserved_instances_offering(params = {})
    # @param [Hash] params ({})
    def purchase_reserved_instances_offering(params = {}, options = {})
      req = build_request(:purchase_reserved_instances_offering, params)
      req.send_request(options)
    end

    # Purchases one or more Scheduled Instances with the specified schedule.
    #
    # Scheduled Instances enable you to purchase Amazon EC2 compute capacity
    # by the hour for a one-year term. Before you can purchase a Scheduled
    # Instance, you must call DescribeScheduledInstanceAvailability to check
    # for available schedules and obtain a purchase token. After you
    # purchase a Scheduled Instance, you must call RunScheduledInstances
    # during each scheduled time period.
    #
    # After you purchase a Scheduled Instance, you can't cancel, modify, or
    # resell your purchase.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. For more information, see [Ensuring Idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Array<Types::PurchaseRequest>] :purchase_requests
    #   One or more purchase requests.
    #
    # @return [Types::PurchaseScheduledInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseScheduledInstancesResult#scheduled_instance_set #scheduled_instance_set} => Array&lt;Types::ScheduledInstance&gt;
    #
    #
    # @example Example: To purchase a Scheduled Instance
    #
    #   # This example purchases a Scheduled Instance.
    #
    #   resp = client.purchase_scheduled_instances({
    #     purchase_requests: [
    #       {
    #         instance_count: 1, 
    #         purchase_token: "eyJ2IjoiMSIsInMiOjEsImMiOi...", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scheduled_instance_set: [
    #       {
    #         availability_zone: "us-west-2b", 
    #         create_date: Time.parse("2016-01-25T21:43:38.612Z"), 
    #         hourly_price: "0.095", 
    #         instance_count: 1, 
    #         instance_type: "c4.large", 
    #         network_platform: "EC2-VPC", 
    #         next_slot_start_time: Time.parse("2016-01-31T09:00:00Z"), 
    #         platform: "Linux/UNIX", 
    #         recurrence: {
    #           frequency: "Weekly", 
    #           interval: 1, 
    #           occurrence_day_set: [
    #             1, 
    #           ], 
    #           occurrence_relative_to_end: false, 
    #           occurrence_unit: "", 
    #         }, 
    #         scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012", 
    #         slot_duration_in_hours: 32, 
    #         term_end_date: Time.parse("2017-01-31T09:00:00Z"), 
    #         term_start_date: Time.parse("2016-01-31T09:00:00Z"), 
    #         total_scheduled_instance_hours: 1696, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_scheduled_instances({
    #     client_token: "String",
    #     dry_run: false,
    #     purchase_requests: [ # required
    #       {
    #         instance_count: 1, # required
    #         purchase_token: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_instance_set #=> Array
    #   resp.scheduled_instance_set[0].availability_zone #=> String
    #   resp.scheduled_instance_set[0].create_date #=> Time
    #   resp.scheduled_instance_set[0].hourly_price #=> String
    #   resp.scheduled_instance_set[0].instance_count #=> Integer
    #   resp.scheduled_instance_set[0].instance_type #=> String
    #   resp.scheduled_instance_set[0].network_platform #=> String
    #   resp.scheduled_instance_set[0].next_slot_start_time #=> Time
    #   resp.scheduled_instance_set[0].platform #=> String
    #   resp.scheduled_instance_set[0].previous_slot_end_time #=> Time
    #   resp.scheduled_instance_set[0].recurrence.frequency #=> String
    #   resp.scheduled_instance_set[0].recurrence.interval #=> Integer
    #   resp.scheduled_instance_set[0].recurrence.occurrence_day_set #=> Array
    #   resp.scheduled_instance_set[0].recurrence.occurrence_day_set[0] #=> Integer
    #   resp.scheduled_instance_set[0].recurrence.occurrence_relative_to_end #=> Boolean
    #   resp.scheduled_instance_set[0].recurrence.occurrence_unit #=> String
    #   resp.scheduled_instance_set[0].scheduled_instance_id #=> String
    #   resp.scheduled_instance_set[0].slot_duration_in_hours #=> Integer
    #   resp.scheduled_instance_set[0].term_end_date #=> Time
    #   resp.scheduled_instance_set[0].term_start_date #=> Time
    #   resp.scheduled_instance_set[0].total_scheduled_instance_hours #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseScheduledInstances AWS API Documentation
    #
    # @overload purchase_scheduled_instances(params = {})
    # @param [Hash] params ({})
    def purchase_scheduled_instances(params = {}, options = {})
      req = build_request(:purchase_scheduled_instances, params)
      req.send_request(options)
    end

    # Requests a reboot of one or more instances. This operation is
    # asynchronous; it only queues a request to reboot the specified
    # instances. The operation succeeds if the instances are valid and
    # belong to you. Requests to reboot terminated instances are ignored.
    #
    # If an instance does not cleanly shut down within four minutes, Amazon
    # EC2 performs a hard reboot.
    #
    # For more information about troubleshooting, see [Getting Console
    # Output and Rebooting Instances][1] in the *Amazon Elastic Compute
    # Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html
    #
    # @option params [required, Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_instances({
    #     instance_ids: ["String"], # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RebootInstances AWS API Documentation
    #
    # @overload reboot_instances(params = {})
    # @param [Hash] params ({})
    def reboot_instances(params = {}, options = {})
      req = build_request(:reboot_instances, params)
      req.send_request(options)
    end

    # Registers an AMI. When you're creating an AMI, this is the final step
    # you must complete before you can launch an instance from the AMI. For
    # more information about creating AMIs, see [Creating Your Own AMIs][1]
    # in the *Amazon Elastic Compute Cloud User Guide*.
    #
    # <note markdown="1"> For Amazon EBS-backed instances, CreateImage creates and registers the
    # AMI in a single request, so you don't have to register the AMI
    # yourself.
    #
    #  </note>
    #
    # You can also use `RegisterImage` to create an Amazon EBS-backed Linux
    # AMI from a snapshot of a root device volume. You specify the snapshot
    # using the block device mapping. For more information, see [Launching a
    # Linux Instance from a Backup][2] in the *Amazon Elastic Compute Cloud
    # User Guide*.
    #
    # You can't register an image where a secondary (non-root) snapshot has
    # AWS Marketplace product codes.
    #
    # Some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and
    # SUSE Linux Enterprise Server (SLES), use the EC2 billing product code
    # associated with an AMI to verify the subscription status for package
    # updates. Creating an AMI from an EBS snapshot does not maintain this
    # billing code, and subsequent instances launched from such an AMI will
    # not be able to connect to package update infrastructure. To create an
    # AMI that must retain billing codes, see CreateImage.
    #
    # If needed, you can deregister an AMI at any time. Any modifications
    # you make to an AMI backed by an instance store volume invalidates its
    # registration. If you make changes to an image, deregister the previous
    # image and register the new image.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-launch-snapshot.html
    #
    # @option params [String] :image_location
    #   The full path to your AMI manifest in Amazon S3 storage.
    #
    # @option params [String] :architecture
    #   The architecture of the AMI.
    #
    #   Default: For Amazon EBS-backed AMIs, `i386`. For instance store-backed
    #   AMIs, the architecture specified in the manifest file.
    #
    # @option params [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   One or more block device mapping entries.
    #
    # @option params [String] :description
    #   A description for your AMI.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Boolean] :ena_support
    #   Set to `true` to enable enhanced networking with ENA for the AMI and
    #   any instances that you launch from the AMI.
    #
    #   This option is supported only for HVM AMIs. Specifying this option
    #   with a PV AMI can make instances launched from the AMI unreachable.
    #
    # @option params [String] :kernel_id
    #   The ID of the kernel.
    #
    # @option params [required, String] :name
    #   A name for your AMI.
    #
    #   Constraints: 3-128 alphanumeric characters, parentheses (()), square
    #   brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-),
    #   single quotes ('), at-signs (@), or underscores(\_)
    #
    # @option params [Array<String>] :billing_products
    #   The billing product codes. Your account must be authorized to specify
    #   billing product codes. Otherwise, you can use the AWS Marketplace to
    #   bill for the use of an AMI.
    #
    # @option params [String] :ramdisk_id
    #   The ID of the RAM disk.
    #
    # @option params [String] :root_device_name
    #   The name of the root device (for example, `/dev/sda1`, or
    #   `/dev/xvda`).
    #
    # @option params [String] :sriov_net_support
    #   Set to `simple` to enable enhanced networking with the Intel 82599
    #   Virtual Function interface for the AMI and any instances that you
    #   launch from the AMI.
    #
    #   There is no way to disable `sriovNetSupport` at this time.
    #
    #   This option is supported only for HVM AMIs. Specifying this option
    #   with a PV AMI can make instances launched from the AMI unreachable.
    #
    # @option params [String] :virtualization_type
    #   The type of virtualization.
    #
    #   Default: `paravirtual`
    #
    # @return [Types::RegisterImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterImageResult#image_id #image_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_image({
    #     image_location: "String",
    #     architecture: "i386", # accepts i386, x86_64
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "String",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #         },
    #         no_device: "String",
    #       },
    #     ],
    #     description: "String",
    #     dry_run: false,
    #     ena_support: false,
    #     kernel_id: "String",
    #     name: "String", # required
    #     billing_products: ["String"],
    #     ramdisk_id: "String",
    #     root_device_name: "String",
    #     sriov_net_support: "String",
    #     virtualization_type: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RegisterImage AWS API Documentation
    #
    # @overload register_image(params = {})
    # @param [Hash] params ({})
    def register_image(params = {}, options = {})
      req = build_request(:register_image, params)
      req.send_request(options)
    end

    # Rejects a VPC peering connection request. The VPC peering connection
    # must be in the `pending-acceptance` state. Use the
    # DescribeVpcPeeringConnections request to view your outstanding VPC
    # peering connection requests. To delete an active VPC peering
    # connection, or to delete a VPC peering connection request that you
    # initiated, use DeleteVpcPeeringConnection.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #
    # @return [Types::RejectVpcPeeringConnectionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectVpcPeeringConnectionResult#return #return} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_vpc_peering_connection({
    #     dry_run: false,
    #     vpc_peering_connection_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.return #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RejectVpcPeeringConnection AWS API Documentation
    #
    # @overload reject_vpc_peering_connection(params = {})
    # @param [Hash] params ({})
    def reject_vpc_peering_connection(params = {}, options = {})
      req = build_request(:reject_vpc_peering_connection, params)
      req.send_request(options)
    end

    # Releases the specified Elastic IP address.
    #
    # After releasing an Elastic IP address, it is released to the IP
    # address pool and might be unavailable to you. Be sure to update your
    # DNS records and any servers or devices that communicate with the
    # address. If you attempt to release an Elastic IP address that you
    # already released, you'll get an `AuthFailure` error if the address is
    # already allocated to another AWS account.
    #
    # \[EC2-Classic, default VPC\] Releasing an Elastic IP address
    # automatically disassociates it from any instance that it's associated
    # with. To disassociate an Elastic IP address without releasing it, use
    # DisassociateAddress.
    #
    # \[Nondefault VPC\] You must use DisassociateAddress to disassociate
    # the Elastic IP address before you try to release it. Otherwise, Amazon
    # EC2 returns an error (`InvalidIPAddress.InUse`).
    #
    # @option params [String] :allocation_id
    #   \[EC2-VPC\] The allocation ID. Required for EC2-VPC.
    #
    # @option params [String] :public_ip
    #   \[EC2-Classic\] The Elastic IP address. Required for EC2-Classic.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To release an Elastic IP address for EC2-VPC
    #
    #   # This example releases an Elastic IP address for use with instances in a VPC.
    #
    #   resp = client.release_address({
    #     allocation_id: "eipalloc-64d5890a", 
    #   })
    #
    # @example Example: To release an Elastic IP addresses for EC2-Classic
    #
    #   # This example releases an Elastic IP address for use with instances in EC2-Classic.
    #
    #   resp = client.release_address({
    #     public_ip: "198.51.100.0", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_address({
    #     allocation_id: "String",
    #     public_ip: "String",
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReleaseAddress AWS API Documentation
    #
    # @overload release_address(params = {})
    # @param [Hash] params ({})
    def release_address(params = {}, options = {})
      req = build_request(:release_address, params)
      req.send_request(options)
    end

    # When you no longer want to use an On-Demand Dedicated Host it can be
    # released. On-Demand billing is stopped and the host goes into
    # `released` state. The host ID of Dedicated Hosts that have been
    # released can no longer be specified in another request, e.g.,
    # ModifyHosts. You must stop or terminate all instances on a host before
    # it can be released.
    #
    # When Dedicated Hosts are released, it make take some time for them to
    # stop counting toward your limit and you may receive capacity errors
    # when trying to allocate new Dedicated hosts. Try waiting a few
    # minutes, and then try again.
    #
    # Released hosts will still appear in a DescribeHosts response.
    #
    # @option params [required, Array<String>] :host_ids
    #   The IDs of the Dedicated Hosts you want to release.
    #
    # @return [Types::ReleaseHostsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReleaseHostsResult#successful #successful} => Array&lt;String&gt;
    #   * {Types::ReleaseHostsResult#unsuccessful #unsuccessful} => Array&lt;Types::UnsuccessfulItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_hosts({
    #     host_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.successful #=> Array
    #   resp.successful[0] #=> String
    #   resp.unsuccessful #=> Array
    #   resp.unsuccessful[0].error.code #=> String
    #   resp.unsuccessful[0].error.message #=> String
    #   resp.unsuccessful[0].resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReleaseHosts AWS API Documentation
    #
    # @overload release_hosts(params = {})
    # @param [Hash] params ({})
    def release_hosts(params = {}, options = {})
      req = build_request(:release_hosts, params)
      req.send_request(options)
    end

    # Replaces an IAM instance profile for the specified running instance.
    # You can use this action to change the IAM instance profile that's
    # associated with an instance without having to disassociate the
    # existing IAM instance profile first.
    #
    # Use DescribeIamInstanceProfileAssociations to get the association ID.
    #
    # @option params [required, Types::IamInstanceProfileSpecification] :iam_instance_profile
    #   The IAM instance profile.
    #
    # @option params [required, String] :association_id
    #   The ID of the existing IAM instance profile association.
    #
    # @return [Types::ReplaceIamInstanceProfileAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplaceIamInstanceProfileAssociationResult#iam_instance_profile_association #iam_instance_profile_association} => Types::IamInstanceProfileAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_iam_instance_profile_association({
    #     iam_instance_profile: { # required
    #       arn: "String",
    #       name: "String",
    #     },
    #     association_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iam_instance_profile_association.association_id #=> String
    #   resp.iam_instance_profile_association.instance_id #=> String
    #   resp.iam_instance_profile_association.iam_instance_profile.arn #=> String
    #   resp.iam_instance_profile_association.iam_instance_profile.id #=> String
    #   resp.iam_instance_profile_association.state #=> String, one of "associating", "associated", "disassociating", "disassociated"
    #   resp.iam_instance_profile_association.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceIamInstanceProfileAssociation AWS API Documentation
    #
    # @overload replace_iam_instance_profile_association(params = {})
    # @param [Hash] params ({})
    def replace_iam_instance_profile_association(params = {}, options = {})
      req = build_request(:replace_iam_instance_profile_association, params)
      req.send_request(options)
    end

    # Changes which network ACL a subnet is associated with. By default when
    # you create a subnet, it's automatically associated with the default
    # network ACL. For more information about network ACLs, see [Network
    # ACLs][1] in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html
    #
    # @option params [required, String] :association_id
    #   The ID of the current association between the original network ACL and
    #   the subnet.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :network_acl_id
    #   The ID of the new network ACL to associate with the subnet.
    #
    # @return [Types::ReplaceNetworkAclAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplaceNetworkAclAssociationResult#new_association_id #new_association_id} => String
    #
    #
    # @example Example: To replace the network ACL associated with a subnet
    #
    #   # This example associates the specified network ACL with the subnet for the specified network ACL association.
    #
    #   resp = client.replace_network_acl_association({
    #     association_id: "aclassoc-e5b95c8c", 
    #     network_acl_id: "acl-5fb85d36", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     new_association_id: "aclassoc-3999875b", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_network_acl_association({
    #     association_id: "String", # required
    #     dry_run: false,
    #     network_acl_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.new_association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceNetworkAclAssociation AWS API Documentation
    #
    # @overload replace_network_acl_association(params = {})
    # @param [Hash] params ({})
    def replace_network_acl_association(params = {}, options = {})
      req = build_request(:replace_network_acl_association, params)
      req.send_request(options)
    end

    # Replaces an entry (rule) in a network ACL. For more information about
    # network ACLs, see [Network ACLs][1] in the *Amazon Virtual Private
    # Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html
    #
    # @option params [String] :cidr_block
    #   The IPv4 network range to allow or deny, in CIDR notation (for example
    #   `172.16.0.0/24`).
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Boolean] :egress
    #   Indicates whether to replace the egress rule.
    #
    #   Default: If no value is specified, we replace the ingress rule.
    #
    # @option params [Types::IcmpTypeCode] :icmp_type_code
    #   ICMP protocol: The ICMP or ICMPv6 type and code. Required if
    #   specifying the ICMP (1) protocol, or protocol 58 (ICMPv6) with an IPv6
    #   CIDR block.
    #
    # @option params [String] :ipv_6_cidr_block
    #   The IPv6 network range to allow or deny, in CIDR notation (for example
    #   `2001:bd8:1234:1a00::/64`).
    #
    # @option params [required, String] :network_acl_id
    #   The ID of the ACL.
    #
    # @option params [Types::PortRange] :port_range
    #   TCP or UDP protocols: The range of ports the rule applies to. Required
    #   if specifying TCP (6) or UDP (17) for the protocol.
    #
    # @option params [required, String] :protocol
    #   The IP protocol. You can specify `all` or `-1` to mean all protocols.
    #   If you specify `all`, `-1`, or a protocol number other than `tcp`,
    #   `udp`, or `icmp`, traffic on all ports is allowed, regardless of any
    #   ports or ICMP types or codes you specify. If you specify protocol `58`
    #   (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types
    #   and codes allowed, regardless of any that you specify. If you specify
    #   protocol `58` (ICMPv6) and specify an IPv6 CIDR block, you must
    #   specify an ICMP type and code.
    #
    # @option params [required, String] :rule_action
    #   Indicates whether to allow or deny the traffic that matches the rule.
    #
    # @option params [required, Integer] :rule_number
    #   The rule number of the entry to replace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To replace a network ACL entry
    #
    #   # This example replaces an entry for the specified network ACL. The new rule 100 allows ingress traffic from 203.0.113.12/24 on UDP port 53 (DNS) into any associated subnet.
    #
    #   resp = client.replace_network_acl_entry({
    #     cidr_block: "203.0.113.12/24", 
    #     egress: false, 
    #     network_acl_id: "acl-5fb85d36", 
    #     port_range: {
    #       from: 53, 
    #       to: 53, 
    #     }, 
    #     protocol: "udp", 
    #     rule_action: "allow", 
    #     rule_number: 100, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_network_acl_entry({
    #     cidr_block: "String",
    #     dry_run: false,
    #     egress: false, # required
    #     icmp_type_code: {
    #       code: 1,
    #       type: 1,
    #     },
    #     ipv_6_cidr_block: "String",
    #     network_acl_id: "String", # required
    #     port_range: {
    #       from: 1,
    #       to: 1,
    #     },
    #     protocol: "String", # required
    #     rule_action: "allow", # required, accepts allow, deny
    #     rule_number: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceNetworkAclEntry AWS API Documentation
    #
    # @overload replace_network_acl_entry(params = {})
    # @param [Hash] params ({})
    def replace_network_acl_entry(params = {}, options = {})
      req = build_request(:replace_network_acl_entry, params)
      req.send_request(options)
    end

    # Replaces an existing route within a route table in a VPC. You must
    # provide only one of the following: Internet gateway or virtual private
    # gateway, NAT instance, NAT gateway, VPC peering connection, network
    # interface, or egress-only Internet gateway.
    #
    # For more information about route tables, see [Route Tables][1] in the
    # *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html
    #
    # @option params [String] :destination_cidr_block
    #   The IPv4 CIDR address block used for the destination match. The value
    #   you provide must match the CIDR of an existing route in the table.
    #
    # @option params [String] :destination_ipv_6_cidr_block
    #   The IPv6 CIDR address block used for the destination match. The value
    #   you provide must match the CIDR of an existing route in the table.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [String] :egress_only_internet_gateway_id
    #   \[IPv6 traffic only\] The ID of an egress-only Internet gateway.
    #
    # @option params [String] :gateway_id
    #   The ID of an Internet gateway or virtual private gateway.
    #
    # @option params [String] :instance_id
    #   The ID of a NAT instance in your VPC.
    #
    # @option params [String] :nat_gateway_id
    #   \[IPv4 traffic only\] The ID of a NAT gateway.
    #
    # @option params [String] :network_interface_id
    #   The ID of a network interface.
    #
    # @option params [required, String] :route_table_id
    #   The ID of the route table.
    #
    # @option params [String] :vpc_peering_connection_id
    #   The ID of a VPC peering connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To replace a route
    #
    #   # This example replaces the specified route in the specified table table. The new route matches the specified CIDR and sends the traffic to the specified virtual private gateway.
    #
    #   resp = client.replace_route({
    #     destination_cidr_block: "10.0.0.0/16", 
    #     gateway_id: "vgw-9a4cacf3", 
    #     route_table_id: "rtb-22574640", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_route({
    #     destination_cidr_block: "String",
    #     destination_ipv_6_cidr_block: "String",
    #     dry_run: false,
    #     egress_only_internet_gateway_id: "String",
    #     gateway_id: "String",
    #     instance_id: "String",
    #     nat_gateway_id: "String",
    #     network_interface_id: "String",
    #     route_table_id: "String", # required
    #     vpc_peering_connection_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceRoute AWS API Documentation
    #
    # @overload replace_route(params = {})
    # @param [Hash] params ({})
    def replace_route(params = {}, options = {})
      req = build_request(:replace_route, params)
      req.send_request(options)
    end

    # Changes the route table associated with a given subnet in a VPC. After
    # the operation completes, the subnet uses the routes in the new route
    # table it's associated with. For more information about route tables,
    # see [Route Tables][1] in the *Amazon Virtual Private Cloud User
    # Guide*.
    #
    # You can also use ReplaceRouteTableAssociation to change which table is
    # the main route table in the VPC. You just specify the main route
    # table's association ID and the route table to be the new main route
    # table.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html
    #
    # @option params [required, String] :association_id
    #   The association ID.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :route_table_id
    #   The ID of the new route table to associate with the subnet.
    #
    # @return [Types::ReplaceRouteTableAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplaceRouteTableAssociationResult#new_association_id #new_association_id} => String
    #
    #
    # @example Example: To replace the route table associated with a subnet
    #
    #   # This example associates the specified route table with the subnet for the specified route table association.
    #
    #   resp = client.replace_route_table_association({
    #     association_id: "rtbassoc-781d0d1a", 
    #     route_table_id: "rtb-22574640", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     new_association_id: "rtbassoc-3a1f0f58", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_route_table_association({
    #     association_id: "String", # required
    #     dry_run: false,
    #     route_table_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.new_association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceRouteTableAssociation AWS API Documentation
    #
    # @overload replace_route_table_association(params = {})
    # @param [Hash] params ({})
    def replace_route_table_association(params = {}, options = {})
      req = build_request(:replace_route_table_association, params)
      req.send_request(options)
    end

    # Submits feedback about the status of an instance. The instance must be
    # in the `running` state. If your experience with the instance differs
    # from the instance status returned by DescribeInstanceStatus, use
    # ReportInstanceStatus to report your experience with the instance.
    # Amazon EC2 collects this information to improve the accuracy of status
    # checks.
    #
    # Use of this action does not change the value returned by
    # DescribeInstanceStatus.
    #
    # @option params [String] :description
    #   Descriptive text about the health state of your instance.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The time at which the reported instance health state ended.
    #
    # @option params [required, Array<String>] :instances
    #   One or more instances.
    #
    # @option params [required, Array<String>] :reason_codes
    #   One or more reason codes that describes the health state of your
    #   instance.
    #
    #   * `instance-stuck-in-state`\: My instance is stuck in a state.
    #
    #   * `unresponsive`\: My instance is unresponsive.
    #
    #   * `not-accepting-credentials`\: My instance is not accepting my
    #     credentials.
    #
    #   * `password-not-available`\: A password is not available for my
    #     instance.
    #
    #   * `performance-network`\: My instance is experiencing performance
    #     problems which I believe are network related.
    #
    #   * `performance-instance-store`\: My instance is experiencing
    #     performance problems which I believe are related to the instance
    #     stores.
    #
    #   * `performance-ebs-volume`\: My instance is experiencing performance
    #     problems which I believe are related to an EBS volume.
    #
    #   * `performance-other`\: My instance is experiencing performance
    #     problems.
    #
    #   * `other`\: \[explain using the description parameter\]
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The time at which the reported instance health state began.
    #
    # @option params [required, String] :status
    #   The status of all instances listed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.report_instance_status({
    #     description: "String",
    #     dry_run: false,
    #     end_time: Time.now,
    #     instances: ["String"], # required
    #     reason_codes: ["instance-stuck-in-state"], # required, accepts instance-stuck-in-state, unresponsive, not-accepting-credentials, password-not-available, performance-network, performance-instance-store, performance-ebs-volume, performance-other, other
    #     start_time: Time.now,
    #     status: "ok", # required, accepts ok, impaired
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReportInstanceStatus AWS API Documentation
    #
    # @overload report_instance_status(params = {})
    # @param [Hash] params ({})
    def report_instance_status(params = {}, options = {})
      req = build_request(:report_instance_status, params)
      req.send_request(options)
    end

    # Creates a Spot fleet request.
    #
    # You can submit a single request that includes multiple launch
    # specifications that vary by instance type, AMI, Availability Zone, or
    # subnet.
    #
    # By default, the Spot fleet requests Spot instances in the Spot pool
    # where the price per unit is the lowest. Each launch specification can
    # include its own instance weighting that reflects the value of the
    # instance type to your application workload.
    #
    # Alternatively, you can specify that the Spot fleet distribute the
    # target capacity across the Spot pools included in its launch
    # specifications. By ensuring that the Spot instances in your Spot fleet
    # are in different Spot pools, you can improve the availability of your
    # fleet.
    #
    # For more information, see [Spot Fleet Requests][1] in the *Amazon
    # Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, Types::SpotFleetRequestConfigData] :spot_fleet_request_config
    #   The configuration for the Spot fleet request.
    #
    # @return [Types::RequestSpotFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestSpotFleetResponse#spot_fleet_request_id #spot_fleet_request_id} => String
    #
    #
    # @example Example: To request a Spot fleet in the subnet with the lowest price
    #
    #   # This example creates a Spot fleet request with two launch specifications that differ only by subnet. The Spot fleet launches the instances in the specified subnet with the lowest price. If the instances are launched in a default VPC, they receive a public IP address by default. If the instances are launched in a nondefault VPC, they do not receive a public IP address by default. Note that you can't specify different subnets from the same Availability Zone in a Spot fleet request.
    #
    #   resp = client.request_spot_fleet({
    #     spot_fleet_request_config: {
    #       iam_fleet_role: "arn:aws:iam::123456789012:role/my-spot-fleet-role", 
    #       launch_specifications: [
    #         {
    #           iam_instance_profile: {
    #             arn: "arn:aws:iam::123456789012:instance-profile/my-iam-role", 
    #           }, 
    #           image_id: "ami-1a2b3c4d", 
    #           instance_type: "m3.medium", 
    #           key_name: "my-key-pair", 
    #           security_groups: [
    #             {
    #               group_id: "sg-1a2b3c4d", 
    #             }, 
    #           ], 
    #           subnet_id: "subnet-1a2b3c4d, subnet-3c4d5e6f", 
    #         }, 
    #       ], 
    #       spot_price: "0.04", 
    #       target_capacity: 2, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #   }
    #
    # @example Example: To request a Spot fleet in the Availability Zone with the lowest price
    #
    #   # This example creates a Spot fleet request with two launch specifications that differ only by Availability Zone. The Spot fleet launches the instances in the specified Availability Zone with the lowest price. If your account supports EC2-VPC only, Amazon EC2 launches the Spot instances in the default subnet of the Availability Zone. If your account supports EC2-Classic, Amazon EC2 launches the instances in EC2-Classic in the Availability Zone.
    #
    #   resp = client.request_spot_fleet({
    #     spot_fleet_request_config: {
    #       iam_fleet_role: "arn:aws:iam::123456789012:role/my-spot-fleet-role", 
    #       launch_specifications: [
    #         {
    #           iam_instance_profile: {
    #             arn: "arn:aws:iam::123456789012:instance-profile/my-iam-role", 
    #           }, 
    #           image_id: "ami-1a2b3c4d", 
    #           instance_type: "m3.medium", 
    #           key_name: "my-key-pair", 
    #           placement: {
    #             availability_zone: "us-west-2a, us-west-2b", 
    #           }, 
    #           security_groups: [
    #             {
    #               group_id: "sg-1a2b3c4d", 
    #             }, 
    #           ], 
    #         }, 
    #       ], 
    #       spot_price: "0.04", 
    #       target_capacity: 2, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #   }
    #
    # @example Example: To launch Spot instances in a subnet and assign them public IP addresses
    #
    #   # This example assigns public addresses to instances launched in a nondefault VPC. Note that when you specify a network interface, you must include the subnet ID and security group ID using the network interface.
    #
    #   resp = client.request_spot_fleet({
    #     spot_fleet_request_config: {
    #       iam_fleet_role: "arn:aws:iam::123456789012:role/my-spot-fleet-role", 
    #       launch_specifications: [
    #         {
    #           iam_instance_profile: {
    #             arn: "arn:aws:iam::880185128111:instance-profile/my-iam-role", 
    #           }, 
    #           image_id: "ami-1a2b3c4d", 
    #           instance_type: "m3.medium", 
    #           key_name: "my-key-pair", 
    #           network_interfaces: [
    #             {
    #               associate_public_ip_address: true, 
    #               device_index: 0, 
    #               groups: [
    #                 "sg-1a2b3c4d", 
    #               ], 
    #               subnet_id: "subnet-1a2b3c4d", 
    #             }, 
    #           ], 
    #         }, 
    #       ], 
    #       spot_price: "0.04", 
    #       target_capacity: 2, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #   }
    #
    # @example Example: To request a Spot fleet using the diversified allocation strategy
    #
    #   # This example creates a Spot fleet request that launches 30 instances using the diversified allocation strategy. The launch specifications differ by instance type. The Spot fleet distributes the instances across the launch specifications such that there are 10 instances of each type.
    #
    #   resp = client.request_spot_fleet({
    #     spot_fleet_request_config: {
    #       allocation_strategy: "diversified", 
    #       iam_fleet_role: "arn:aws:iam::123456789012:role/my-spot-fleet-role", 
    #       launch_specifications: [
    #         {
    #           image_id: "ami-1a2b3c4d", 
    #           instance_type: "c4.2xlarge", 
    #           subnet_id: "subnet-1a2b3c4d", 
    #         }, 
    #         {
    #           image_id: "ami-1a2b3c4d", 
    #           instance_type: "m3.2xlarge", 
    #           subnet_id: "subnet-1a2b3c4d", 
    #         }, 
    #         {
    #           image_id: "ami-1a2b3c4d", 
    #           instance_type: "r3.2xlarge", 
    #           subnet_id: "subnet-1a2b3c4d", 
    #         }, 
    #       ], 
    #       spot_price: "0.70", 
    #       target_capacity: 30, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     spot_fleet_request_id: "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_spot_fleet({
    #     dry_run: false,
    #     spot_fleet_request_config: { # required
    #       allocation_strategy: "lowestPrice", # accepts lowestPrice, diversified
    #       client_token: "String",
    #       excess_capacity_termination_policy: "noTermination", # accepts noTermination, default
    #       fulfilled_capacity: 1.0,
    #       iam_fleet_role: "String", # required
    #       launch_specifications: [ # required
    #         {
    #           security_groups: [
    #             {
    #               group_name: "String",
    #               group_id: "String",
    #             },
    #           ],
    #           addressing_type: "String",
    #           block_device_mappings: [
    #             {
    #               device_name: "String",
    #               virtual_name: "String",
    #               ebs: {
    #                 encrypted: false,
    #                 delete_on_termination: false,
    #                 iops: 1,
    #                 snapshot_id: "String",
    #                 volume_size: 1,
    #                 volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #               },
    #               no_device: "String",
    #             },
    #           ],
    #           ebs_optimized: false,
    #           iam_instance_profile: {
    #             arn: "String",
    #             name: "String",
    #           },
    #           image_id: "String",
    #           instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #           kernel_id: "String",
    #           key_name: "String",
    #           monitoring: {
    #             enabled: false,
    #           },
    #           network_interfaces: [
    #             {
    #               associate_public_ip_address: false,
    #               delete_on_termination: false,
    #               description: "String",
    #               device_index: 1,
    #               groups: ["String"],
    #               ipv_6_address_count: 1,
    #               ipv_6_addresses: [
    #                 {
    #                   ipv_6_address: "String",
    #                 },
    #               ],
    #               network_interface_id: "String",
    #               private_ip_address: "String",
    #               private_ip_addresses: [
    #                 {
    #                   primary: false,
    #                   private_ip_address: "String", # required
    #                 },
    #               ],
    #               secondary_private_ip_address_count: 1,
    #               subnet_id: "String",
    #             },
    #           ],
    #           placement: {
    #             availability_zone: "String",
    #             group_name: "String",
    #             tenancy: "default", # accepts default, dedicated, host
    #           },
    #           ramdisk_id: "String",
    #           spot_price: "String",
    #           subnet_id: "String",
    #           user_data: "String",
    #           weighted_capacity: 1.0,
    #           tag_specifications: [
    #             {
    #               resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #               tags: [
    #                 {
    #                   key: "String",
    #                   value: "String",
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #       ],
    #       spot_price: "String", # required
    #       target_capacity: 1, # required
    #       terminate_instances_with_expiration: false,
    #       type: "request", # accepts request, maintain
    #       valid_from: Time.now,
    #       valid_until: Time.now,
    #       replace_unhealthy_instances: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.spot_fleet_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotFleet AWS API Documentation
    #
    # @overload request_spot_fleet(params = {})
    # @param [Hash] params ({})
    def request_spot_fleet(params = {}, options = {})
      req = build_request(:request_spot_fleet, params)
      req.send_request(options)
    end

    # Creates a Spot instance request. Spot instances are instances that
    # Amazon EC2 launches when the bid price that you specify exceeds the
    # current Spot price. Amazon EC2 periodically sets the Spot price based
    # on available Spot Instance capacity and current Spot instance
    # requests. For more information, see [Spot Instance Requests][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html
    #
    # @option params [String] :availability_zone_group
    #   The user-specified name for a logical grouping of bids.
    #
    #   When you specify an Availability Zone group in a Spot Instance
    #   request, all Spot instances in the request are launched in the same
    #   Availability Zone. Instance proximity is maintained with this
    #   parameter, but the choice of Availability Zone is not. The group
    #   applies only to bids for Spot Instances of the same instance type. Any
    #   additional Spot instance requests that are specified with the same
    #   Availability Zone group name are launched in that same Availability
    #   Zone, as long as at least one instance from the group is still active.
    #
    #   If there is no active instance running in the Availability Zone group
    #   that you specify for a new Spot instance request (all instances are
    #   terminated, the bid is expired, or the bid falls below current
    #   market), then Amazon EC2 launches the instance in any Availability
    #   Zone where the constraint can be met. Consequently, the subsequent set
    #   of Spot instances could be placed in a different zone from the
    #   original request, even if you specified the same Availability Zone
    #   group.
    #
    #   Default: Instances are launched in any available Availability Zone.
    #
    # @option params [Integer] :block_duration_minutes
    #   The required duration for the Spot instances (also known as Spot
    #   blocks), in minutes. This value must be a multiple of 60 (60, 120,
    #   180, 240, 300, or 360).
    #
    #   The duration period starts as soon as your Spot instance receives its
    #   instance ID. At the end of the duration period, Amazon EC2 marks the
    #   Spot instance for termination and provides a Spot instance termination
    #   notice, which gives the instance a two-minute warning before it
    #   terminates.
    #
    #   Note that you can't specify an Availability Zone group or a launch
    #   group if you specify a duration.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Integer] :instance_count
    #   The maximum number of Spot instances to launch.
    #
    #   Default: 1
    #
    # @option params [String] :launch_group
    #   The instance launch group. Launch groups are Spot instances that
    #   launch together and terminate together.
    #
    #   Default: Instances are launched and terminated individually
    #
    # @option params [Types::RequestSpotLaunchSpecification] :launch_specification
    #   The launch specification.
    #
    # @option params [required, String] :spot_price
    #   The maximum hourly price (bid) for any Spot instance launched to
    #   fulfill the request.
    #
    # @option params [String] :type
    #   The Spot instance request type.
    #
    #   Default: `one-time`
    #
    # @option params [Time,DateTime,Date,Integer,String] :valid_from
    #   The start date of the request. If this is a one-time request, the
    #   request becomes active at this date and time and remains active until
    #   all instances launch, the request expires, or the request is canceled.
    #   If the request is persistent, the request becomes active at this date
    #   and time and remains active until it expires or is canceled.
    #
    #   Default: The request is effective indefinitely.
    #
    # @option params [Time,DateTime,Date,Integer,String] :valid_until
    #   The end date of the request. If this is a one-time request, the
    #   request remains active until all instances launch, the request is
    #   canceled, or this date is reached. If the request is persistent, it
    #   remains active until it is canceled or this date and time is reached.
    #
    #   Default: The request is effective indefinitely.
    #
    # @return [Types::RequestSpotInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestSpotInstancesResult#spot_instance_requests #spot_instance_requests} => Array&lt;Types::SpotInstanceRequest&gt;
    #
    #
    # @example Example: To create a one-time Spot Instance request
    #
    #   # This example creates a one-time Spot Instance request for five instances in the specified Availability Zone. If your account supports EC2-VPC only, Amazon EC2 launches the instances in the default subnet of the specified Availability Zone. If your account supports EC2-Classic, Amazon EC2 launches the instances in EC2-Classic in the specified Availability Zone.
    #
    #   resp = client.request_spot_instances({
    #     instance_count: 5, 
    #     launch_specification: {
    #       iam_instance_profile: {
    #         arn: "arn:aws:iam::123456789012:instance-profile/my-iam-role", 
    #       }, 
    #       image_id: "ami-1a2b3c4d", 
    #       instance_type: "m3.medium", 
    #       key_name: "my-key-pair", 
    #       placement: {
    #         availability_zone: "us-west-2a", 
    #       }, 
    #       security_group_ids: [
    #         "sg-1a2b3c4d", 
    #       ], 
    #     }, 
    #     spot_price: "0.03", 
    #     type: "one-time", 
    #   })
    #
    # @example Example: To create a one-time Spot Instance request
    #
    #   # This example command creates a one-time Spot Instance request for five instances in the specified subnet. Amazon EC2 launches the instances in the specified subnet. If the VPC is a nondefault VPC, the instances do not receive a public IP address by default.
    #
    #   resp = client.request_spot_instances({
    #     instance_count: 5, 
    #     launch_specification: {
    #       iam_instance_profile: {
    #         arn: "arn:aws:iam::123456789012:instance-profile/my-iam-role", 
    #       }, 
    #       image_id: "ami-1a2b3c4d", 
    #       instance_type: "m3.medium", 
    #       security_group_ids: [
    #         "sg-1a2b3c4d", 
    #       ], 
    #       subnet_id: "subnet-1a2b3c4d", 
    #     }, 
    #     spot_price: "0.050", 
    #     type: "one-time", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_spot_instances({
    #     availability_zone_group: "String",
    #     block_duration_minutes: 1,
    #     client_token: "String",
    #     dry_run: false,
    #     instance_count: 1,
    #     launch_group: "String",
    #     launch_specification: {
    #       security_group_ids: ["String"],
    #       security_groups: ["String"],
    #       addressing_type: "String",
    #       block_device_mappings: [
    #         {
    #           device_name: "String",
    #           virtual_name: "String",
    #           ebs: {
    #             encrypted: false,
    #             delete_on_termination: false,
    #             iops: 1,
    #             snapshot_id: "String",
    #             volume_size: 1,
    #             volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #           },
    #           no_device: "String",
    #         },
    #       ],
    #       ebs_optimized: false,
    #       iam_instance_profile: {
    #         arn: "String",
    #         name: "String",
    #       },
    #       image_id: "String",
    #       instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #       kernel_id: "String",
    #       key_name: "String",
    #       monitoring: {
    #         enabled: false, # required
    #       },
    #       network_interfaces: [
    #         {
    #           associate_public_ip_address: false,
    #           delete_on_termination: false,
    #           description: "String",
    #           device_index: 1,
    #           groups: ["String"],
    #           ipv_6_address_count: 1,
    #           ipv_6_addresses: [
    #             {
    #               ipv_6_address: "String",
    #             },
    #           ],
    #           network_interface_id: "String",
    #           private_ip_address: "String",
    #           private_ip_addresses: [
    #             {
    #               primary: false,
    #               private_ip_address: "String", # required
    #             },
    #           ],
    #           secondary_private_ip_address_count: 1,
    #           subnet_id: "String",
    #         },
    #       ],
    #       placement: {
    #         availability_zone: "String",
    #         group_name: "String",
    #         tenancy: "default", # accepts default, dedicated, host
    #       },
    #       ramdisk_id: "String",
    #       subnet_id: "String",
    #       user_data: "String",
    #     },
    #     spot_price: "String", # required
    #     type: "one-time", # accepts one-time, persistent
    #     valid_from: Time.now,
    #     valid_until: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.spot_instance_requests #=> Array
    #   resp.spot_instance_requests[0].actual_block_hourly_price #=> String
    #   resp.spot_instance_requests[0].availability_zone_group #=> String
    #   resp.spot_instance_requests[0].block_duration_minutes #=> Integer
    #   resp.spot_instance_requests[0].create_time #=> Time
    #   resp.spot_instance_requests[0].fault.code #=> String
    #   resp.spot_instance_requests[0].fault.message #=> String
    #   resp.spot_instance_requests[0].instance_id #=> String
    #   resp.spot_instance_requests[0].launch_group #=> String
    #   resp.spot_instance_requests[0].launch_specification.user_data #=> String
    #   resp.spot_instance_requests[0].launch_specification.security_groups #=> Array
    #   resp.spot_instance_requests[0].launch_specification.security_groups[0].group_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.security_groups[0].group_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.addressing_type #=> String
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings #=> Array
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].device_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].virtual_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.iops #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].ebs.volume_type #=> String, one of "standard", "io1", "gp2", "sc1", "st1"
    #   resp.spot_instance_requests[0].launch_specification.block_device_mappings[0].no_device #=> String
    #   resp.spot_instance_requests[0].launch_specification.ebs_optimized #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.iam_instance_profile.arn #=> String
    #   resp.spot_instance_requests[0].launch_specification.iam_instance_profile.name #=> String
    #   resp.spot_instance_requests[0].launch_specification.image_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.spot_instance_requests[0].launch_specification.kernel_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.key_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces #=> Array
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].associate_public_ip_address #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].delete_on_termination #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].description #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].device_index #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].groups #=> Array
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].groups[0] #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].ipv_6_address_count #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].ipv_6_addresses #=> Array
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].ipv_6_addresses[0].ipv_6_address #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].network_interface_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].private_ip_address #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].private_ip_addresses #=> Array
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].private_ip_addresses[0].primary #=> Boolean
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].secondary_private_ip_address_count #=> Integer
    #   resp.spot_instance_requests[0].launch_specification.network_interfaces[0].subnet_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.placement.availability_zone #=> String
    #   resp.spot_instance_requests[0].launch_specification.placement.group_name #=> String
    #   resp.spot_instance_requests[0].launch_specification.placement.tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.spot_instance_requests[0].launch_specification.ramdisk_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.subnet_id #=> String
    #   resp.spot_instance_requests[0].launch_specification.monitoring.enabled #=> Boolean
    #   resp.spot_instance_requests[0].launched_availability_zone #=> String
    #   resp.spot_instance_requests[0].product_description #=> String, one of "Linux/UNIX", "Linux/UNIX (Amazon VPC)", "Windows", "Windows (Amazon VPC)"
    #   resp.spot_instance_requests[0].spot_instance_request_id #=> String
    #   resp.spot_instance_requests[0].spot_price #=> String
    #   resp.spot_instance_requests[0].state #=> String, one of "open", "active", "closed", "cancelled", "failed"
    #   resp.spot_instance_requests[0].status.code #=> String
    #   resp.spot_instance_requests[0].status.message #=> String
    #   resp.spot_instance_requests[0].status.update_time #=> Time
    #   resp.spot_instance_requests[0].tags #=> Array
    #   resp.spot_instance_requests[0].tags[0].key #=> String
    #   resp.spot_instance_requests[0].tags[0].value #=> String
    #   resp.spot_instance_requests[0].type #=> String, one of "one-time", "persistent"
    #   resp.spot_instance_requests[0].valid_from #=> Time
    #   resp.spot_instance_requests[0].valid_until #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotInstances AWS API Documentation
    #
    # @overload request_spot_instances(params = {})
    # @param [Hash] params ({})
    def request_spot_instances(params = {}, options = {})
      req = build_request(:request_spot_instances, params)
      req.send_request(options)
    end

    # Resets an attribute of an AMI to its default value.
    #
    # <note markdown="1"> The productCodes attribute can't be reset.
    #
    #  </note>
    #
    # @option params [required, String] :attribute
    #   The attribute to reset (currently you can only reset the launch
    #   permission attribute).
    #
    # @option params [required, String] :image_id
    #   The ID of the AMI.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_image_attribute({
    #     attribute: "launchPermission", # required, accepts launchPermission
    #     image_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetImageAttribute AWS API Documentation
    #
    # @overload reset_image_attribute(params = {})
    # @param [Hash] params ({})
    def reset_image_attribute(params = {}, options = {})
      req = build_request(:reset_image_attribute, params)
      req.send_request(options)
    end

    # Resets an attribute of an instance to its default value. To reset the
    # `kernel` or `ramdisk`, the instance must be in a stopped state. To
    # reset the `sourceDestCheck`, the instance can be either running or
    # stopped.
    #
    # The `sourceDestCheck` attribute controls whether source/destination
    # checking is enabled. The default value is `true`, which means checking
    # is enabled. This value must be `false` for a NAT instance to perform
    # NAT. For more information, see [NAT Instances][1] in the *Amazon
    # Virtual Private Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html
    #
    # @option params [required, String] :attribute
    #   The attribute to reset.
    #
    #   You can only reset the following attributes: `kernel` \| `ramdisk` \|
    #   `sourceDestCheck`. To change an instance attribute, use
    #   ModifyInstanceAttribute.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_instance_attribute({
    #     attribute: "instanceType", # required, accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport
    #     dry_run: false,
    #     instance_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetInstanceAttribute AWS API Documentation
    #
    # @overload reset_instance_attribute(params = {})
    # @param [Hash] params ({})
    def reset_instance_attribute(params = {}, options = {})
      req = build_request(:reset_instance_attribute, params)
      req.send_request(options)
    end

    # Resets a network interface attribute. You can specify only one
    # attribute at a time.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @option params [String] :source_dest_check
    #   The source/destination checking attribute. Resets the value to `true`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_network_interface_attribute({
    #     dry_run: false,
    #     network_interface_id: "String", # required
    #     source_dest_check: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetNetworkInterfaceAttribute AWS API Documentation
    #
    # @overload reset_network_interface_attribute(params = {})
    # @param [Hash] params ({})
    def reset_network_interface_attribute(params = {}, options = {})
      req = build_request(:reset_network_interface_attribute, params)
      req.send_request(options)
    end

    # Resets permission settings for the specified snapshot.
    #
    # For more information on modifying snapshot permissions, see [Sharing
    # Snapshots][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html
    #
    # @option params [required, String] :attribute
    #   The attribute to reset. Currently, only the attribute for permission
    #   to create volumes can be reset.
    #
    # @option params [required, String] :snapshot_id
    #   The ID of the snapshot.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To reset a snapshot attribute
    #
    #   # This example resets the create volume permissions for snapshot ``snap-1234567890abcdef0``. If the command succeeds, no output is returned.
    #
    #   resp = client.reset_snapshot_attribute({
    #     attribute: "createVolumePermission", 
    #     snapshot_id: "snap-1234567890abcdef0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_snapshot_attribute({
    #     attribute: "productCodes", # required, accepts productCodes, createVolumePermission
    #     snapshot_id: "String", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetSnapshotAttribute AWS API Documentation
    #
    # @overload reset_snapshot_attribute(params = {})
    # @param [Hash] params ({})
    def reset_snapshot_attribute(params = {}, options = {})
      req = build_request(:reset_snapshot_attribute, params)
      req.send_request(options)
    end

    # Restores an Elastic IP address that was previously moved to the
    # EC2-VPC platform back to the EC2-Classic platform. You cannot move an
    # Elastic IP address that was originally allocated for use in EC2-VPC.
    # The Elastic IP address must not be associated with an instance or
    # network interface.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :public_ip
    #   The Elastic IP address.
    #
    # @return [Types::RestoreAddressToClassicResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreAddressToClassicResult#public_ip #public_ip} => String
    #   * {Types::RestoreAddressToClassicResult#status #status} => String
    #
    #
    # @example Example: To restore an address to EC2-Classic
    #
    #   # This example restores the specified Elastic IP address to the EC2-Classic platform.
    #
    #   resp = client.restore_address_to_classic({
    #     public_ip: "198.51.100.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     public_ip: "198.51.100.0", 
    #     status: "MoveInProgress", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_address_to_classic({
    #     dry_run: false,
    #     public_ip: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.public_ip #=> String
    #   resp.status #=> String, one of "MoveInProgress", "InVpc", "InClassic"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RestoreAddressToClassic AWS API Documentation
    #
    # @overload restore_address_to_classic(params = {})
    # @param [Hash] params ({})
    def restore_address_to_classic(params = {}, options = {})
      req = build_request(:restore_address_to_classic, params)
      req.send_request(options)
    end

    # \[EC2-VPC only\] Removes one or more egress rules from a security
    # group for EC2-VPC. This action doesn't apply to security groups for
    # use in EC2-Classic. The values that you specify in the revoke request
    # (for example, ports) must match the existing rule's values for the
    # rule to be revoked.
    #
    # Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or
    # source security group. For the TCP and UDP protocols, you must also
    # specify the destination port or range of ports. For the ICMP protocol,
    # you must also specify the ICMP type and code.
    #
    # Rule changes are propagated to instances within the security group as
    # quickly as possible. However, a small delay might occur.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [required, String] :group_id
    #   The ID of the security group.
    #
    # @option params [Array<Types::IpPermission>] :ip_permissions
    #   A set of IP permissions. You can't specify a destination security
    #   group and a CIDR IP address range.
    #
    # @option params [String] :cidr_ip
    #   The CIDR IP address range. We recommend that you specify the CIDR
    #   range in a set of IP permissions instead.
    #
    # @option params [Integer] :from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    #
    # @option params [String] :ip_protocol
    #   The IP protocol name or number. We recommend that you specify the
    #   protocol in a set of IP permissions instead.
    #
    # @option params [Integer] :to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    #
    # @option params [String] :source_security_group_name
    #   The name of a destination security group. To revoke outbound access to
    #   a destination security group, we recommend that you use a set of IP
    #   permissions instead.
    #
    # @option params [String] :source_security_group_owner_id
    #   The AWS account number for a destination security group. To revoke
    #   outbound access to a destination security group, we recommend that you
    #   use a set of IP permissions instead.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_security_group_egress({
    #     dry_run: false,
    #     group_id: "String", # required
    #     ip_permissions: [
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     cidr_ip: "String",
    #     from_port: 1,
    #     ip_protocol: "String",
    #     to_port: 1,
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RevokeSecurityGroupEgress AWS API Documentation
    #
    # @overload revoke_security_group_egress(params = {})
    # @param [Hash] params ({})
    def revoke_security_group_egress(params = {}, options = {})
      req = build_request(:revoke_security_group_egress, params)
      req.send_request(options)
    end

    # Removes one or more ingress rules from a security group. The values
    # that you specify in the revoke request (for example, ports) must match
    # the existing rule's values for the rule to be removed.
    #
    # Each rule consists of the protocol and the CIDR range or source
    # security group. For the TCP and UDP protocols, you must also specify
    # the destination port or range of ports. For the ICMP protocol, you
    # must also specify the ICMP type and code.
    #
    # Rule changes are propagated to instances within the security group as
    # quickly as possible. However, a small delay might occur.
    #
    # @option params [String] :cidr_ip
    #   The CIDR IP address range. You can't specify this parameter when
    #   specifying a source security group.
    #
    # @option params [Integer] :from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP type
    #   number. For the ICMP type number, use `-1` to specify all ICMP types.
    #
    # @option params [String] :group_id
    #   The ID of the security group. Required for a security group in a
    #   nondefault VPC.
    #
    # @option params [String] :group_name
    #   \[EC2-Classic, default VPC\] The name of the security group.
    #
    # @option params [Array<Types::IpPermission>] :ip_permissions
    #   A set of IP permissions. You can't specify a source security group
    #   and a CIDR IP address range.
    #
    # @option params [String] :ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]). Use `-1` to specify all.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #
    # @option params [String] :source_security_group_name
    #   \[EC2-Classic, default VPC\] The name of the source security group.
    #   You can't specify this parameter in combination with the following
    #   parameters: the CIDR IP address range, the start of the port range,
    #   the IP protocol, and the end of the port range. For EC2-VPC, the
    #   source security group must be in the same VPC. To revoke a specific
    #   rule for an IP protocol and port range, use a set of IP permissions
    #   instead.
    #
    # @option params [String] :source_security_group_owner_id
    #   \[EC2-Classic\] The AWS account ID of the source security group, if
    #   the source security group is in a different account. You can't
    #   specify this parameter in combination with the following parameters:
    #   the CIDR IP address range, the IP protocol, the start of the port
    #   range, and the end of the port range. To revoke a specific rule for an
    #   IP protocol and port range, use a set of IP permissions instead.
    #
    # @option params [Integer] :to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP code
    #   number. For the ICMP code number, use `-1` to specify all ICMP codes
    #   for the ICMP type.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_security_group_ingress({
    #     cidr_ip: "String",
    #     from_port: 1,
    #     group_id: "String",
    #     group_name: "String",
    #     ip_permissions: [
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     ip_protocol: "String",
    #     source_security_group_name: "String",
    #     source_security_group_owner_id: "String",
    #     to_port: 1,
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RevokeSecurityGroupIngress AWS API Documentation
    #
    # @overload revoke_security_group_ingress(params = {})
    # @param [Hash] params ({})
    def revoke_security_group_ingress(params = {}, options = {})
      req = build_request(:revoke_security_group_ingress, params)
      req.send_request(options)
    end

    # Launches the specified number of instances using an AMI for which you
    # have permissions.
    #
    # You can specify a number of options, or leave the default options. The
    # following rules apply:
    #
    # * \[EC2-VPC\] If you don't specify a subnet ID, we choose a default
    #   subnet from your default VPC for you. If you don't have a default
    #   VPC, you must specify a subnet ID in the request.
    #
    # * \[EC2-Classic\] If don't specify an Availability Zone, we choose
    #   one for you.
    #
    # * Some instance types must be launched into a VPC. If you do not have
    #   a default VPC, or if you do not specify a subnet ID, the request
    #   fails. For more information, see [Instance Types Available Only in a
    #   VPC][1].
    #
    # * \[EC2-VPC\] All instances have a network interface with a primary
    #   private IPv4 address. If you don't specify this address, we choose
    #   one from the IPv4 range of your subnet.
    #
    # * Not all instance types support IPv6 addresses. For more information,
    #   see [Instance Types][2].
    #
    # * If you don't specify a security group ID, we use the default
    #   security group. For more information, see [Security Groups][3].
    #
    # * If any of the AMIs have a product code attached for which the user
    #   has not subscribed, the request fails.
    #
    # To ensure faster instance launches, break up large requests into
    # smaller batches. For example, create 5 separate launch requests for
    # 100 instances each instead of 1 launch request for 500 instances.
    #
    # An instance is ready for you to use when it's in the `running` state.
    # You can check the state of your instance using DescribeInstances. You
    # can tag instances and EBS volumes during launch, after launch, or
    # both. For more information, see CreateTags and [Tagging Your Amazon
    # EC2 Resources][4].
    #
    # Linux instances have access to the public key of the key pair at boot.
    # You can use this key to provide secure access to the instance. Amazon
    # EC2 public images use this feature to provide secure access without
    # passwords. For more information, see [Key Pairs][5] in the *Amazon
    # Elastic Compute Cloud User Guide*.
    #
    # For troubleshooting, see [What To Do If An Instance Immediately
    # Terminates][6], and [Troubleshooting Connecting to Your Instance][7]
    # in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    # [3]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
    # [4]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    # [5]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    # [6]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html
    # [7]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html
    #
    # @option params [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   The block device mapping.
    #
    #   Supplying both a snapshot ID and an encryption value as arguments for
    #   block-device mapping results in an error. This is because only blank
    #   volumes can be encrypted on start, and these are not created from a
    #   snapshot. If a snapshot is the basis for the volume, it contains data
    #   by definition and its encryption status cannot be changed using this
    #   action.
    #
    # @option params [required, String] :image_id
    #   The ID of the AMI, which you can get by calling DescribeImages.
    #
    # @option params [String] :instance_type
    #   The instance type. For more information, see [Instance Types][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   Default: `m1.small`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #
    # @option params [Integer] :ipv_6_address_count
    #   \[EC2-VPC\] A number of IPv6 addresses to associate with the primary
    #   network interface. Amazon EC2 chooses the IPv6 addresses from the
    #   range of your subnet. You cannot specify this option and the option to
    #   assign specific IPv6 addresses in the same request. You can specify
    #   this option if you've specified a minimum number of instances to
    #   launch.
    #
    # @option params [Array<Types::InstanceIpv6Address>] :ipv_6_addresses
    #   \[EC2-VPC\] Specify one or more IPv6 addresses from the range of the
    #   subnet to associate with the primary network interface. You cannot
    #   specify this option and the option to assign a number of IPv6
    #   addresses in the same request. You cannot specify this option if
    #   you've specified a minimum number of instances to launch.
    #
    # @option params [String] :kernel_id
    #   The ID of the kernel.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
    #
    # @option params [String] :key_name
    #   The name of the key pair. You can create a key pair using
    #   CreateKeyPair or ImportKeyPair.
    #
    #   If you do not specify a key pair, you can't connect to the instance
    #   unless you choose an AMI that is configured to allow users another way
    #   to log in.
    #
    # @option params [required, Integer] :max_count
    #   The maximum number of instances to launch. If you specify more
    #   instances than Amazon EC2 can launch in the target Availability Zone,
    #   Amazon EC2 launches the largest possible number of instances above
    #   `MinCount`.
    #
    #   Constraints: Between 1 and the maximum number you're allowed for the
    #   specified instance type. For more information about the default
    #   limits, and how to request an increase, see [How many instances can I
    #   run in Amazon EC2][1] in the Amazon EC2 FAQ.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2
    #
    # @option params [required, Integer] :min_count
    #   The minimum number of instances to launch. If you specify a minimum
    #   that is more instances than Amazon EC2 can launch in the target
    #   Availability Zone, Amazon EC2 launches no instances.
    #
    #   Constraints: Between 1 and the maximum number you're allowed for the
    #   specified instance type. For more information about the default
    #   limits, and how to request an increase, see [How many instances can I
    #   run in Amazon EC2][1] in the Amazon EC2 General FAQ.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2
    #
    # @option params [Types::RunInstancesMonitoringEnabled] :monitoring
    #   The monitoring for the instance.
    #
    # @option params [Types::Placement] :placement
    #   The placement for the instance.
    #
    # @option params [String] :ramdisk_id
    #   The ID of the RAM disk.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
    #
    # @option params [Array<String>] :security_group_ids
    #   One or more security group IDs. You can create a security group using
    #   CreateSecurityGroup.
    #
    #   Default: Amazon EC2 uses the default security group.
    #
    # @option params [Array<String>] :security_groups
    #   \[EC2-Classic, default VPC\] One or more security group names. For a
    #   nondefault VPC, you must use security group IDs instead.
    #
    #   Default: Amazon EC2 uses the default security group.
    #
    # @option params [String] :subnet_id
    #   \[EC2-VPC\] The ID of the subnet to launch the instance into.
    #
    # @option params [String] :user_data
    #   The user data to make available to the instance. For more information,
    #   see [Running Commands on Your Linux Instance at Launch][1] (Linux) and
    #   [Adding User Data][2] (Windows). If you are using an AWS SDK or
    #   command line tool, Base64-encoding is performed for you, and you can
    #   load the text from a file. Otherwise, you must provide Base64-encoded
    #   text.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data
    #
    # @option params [String] :additional_info
    #   Reserved.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #   Constraints: Maximum 64 ASCII characters
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :disable_api_termination
    #   If you set this parameter to `true`, you can't terminate the instance
    #   using the Amazon EC2 console, CLI, or API; otherwise, you can. To
    #   change this attribute to `false` after launch, use
    #   ModifyInstanceAttribute. Alternatively, if you set
    #   `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate
    #   the instance by running the shutdown command from the instance.
    #
    #   Default: `false`
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Boolean] :ebs_optimized
    #   Indicates whether the instance is optimized for EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal EBS I/O performance.
    #   This optimization isn't available with all instance types. Additional
    #   usage charges apply when using an EBS-optimized instance.
    #
    #   Default: `false`
    #
    # @option params [Types::IamInstanceProfileSpecification] :iam_instance_profile
    #   The IAM instance profile.
    #
    # @option params [String] :instance_initiated_shutdown_behavior
    #   Indicates whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #
    #   Default: `stop`
    #
    # @option params [Array<Types::InstanceNetworkInterfaceSpecification>] :network_interfaces
    #   One or more network interfaces.
    #
    # @option params [String] :private_ip_address
    #   \[EC2-VPC\] The primary IPv4 address. You must specify a value from
    #   the IPv4 address range of the subnet.
    #
    #   Only one private IP address can be designated as primary. You can't
    #   specify this option if you've specified the option to designate a
    #   private IP address as the primary IP address in a network interface
    #   specification. You cannot specify this option if you're launching
    #   more than one instance in the request.
    #
    # @option params [Array<Types::ElasticGpuSpecification>] :elastic_gpu_specification
    #   An Elastic GPU to associate with the instance.
    #
    # @option params [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the resources during launch. You can tag
    #   instances and volumes. The specified tags are applied to all instances
    #   or volumes that are created during launch.
    #
    # @return [Types::Reservation] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Reservation#groups #groups} => Array&lt;Types::GroupIdentifier&gt;
    #   * {Types::Reservation#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::Reservation#owner_id #owner_id} => String
    #   * {Types::Reservation#requester_id #requester_id} => String
    #   * {Types::Reservation#reservation_id #reservation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_instances({
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "String",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #         },
    #         no_device: "String",
    #       },
    #     ],
    #     image_id: "String", # required
    #     instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #     ipv_6_address_count: 1,
    #     ipv_6_addresses: [
    #       {
    #         ipv_6_address: "String",
    #       },
    #     ],
    #     kernel_id: "String",
    #     key_name: "String",
    #     max_count: 1, # required
    #     min_count: 1, # required
    #     monitoring: {
    #       enabled: false, # required
    #     },
    #     placement: {
    #       availability_zone: "String",
    #       affinity: "String",
    #       group_name: "String",
    #       host_id: "String",
    #       tenancy: "default", # accepts default, dedicated, host
    #       spread_domain: "String",
    #     },
    #     ramdisk_id: "String",
    #     security_group_ids: ["String"],
    #     security_groups: ["String"],
    #     subnet_id: "String",
    #     user_data: "String",
    #     additional_info: "String",
    #     client_token: "String",
    #     disable_api_termination: false,
    #     dry_run: false,
    #     ebs_optimized: false,
    #     iam_instance_profile: {
    #       arn: "String",
    #       name: "String",
    #     },
    #     instance_initiated_shutdown_behavior: "stop", # accepts stop, terminate
    #     network_interfaces: [
    #       {
    #         associate_public_ip_address: false,
    #         delete_on_termination: false,
    #         description: "String",
    #         device_index: 1,
    #         groups: ["String"],
    #         ipv_6_address_count: 1,
    #         ipv_6_addresses: [
    #           {
    #             ipv_6_address: "String",
    #           },
    #         ],
    #         network_interface_id: "String",
    #         private_ip_address: "String",
    #         private_ip_addresses: [
    #           {
    #             primary: false,
    #             private_ip_address: "String", # required
    #           },
    #         ],
    #         secondary_private_ip_address_count: 1,
    #         subnet_id: "String",
    #       },
    #     ],
    #     private_ip_address: "String",
    #     elastic_gpu_specification: [
    #       {
    #         type: "String", # required
    #       },
    #     ],
    #     tag_specifications: [
    #       {
    #         resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].group_id #=> String
    #   resp.instances #=> Array
    #   resp.instances[0].ami_launch_index #=> Integer
    #   resp.instances[0].image_id #=> String
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].instance_type #=> String, one of "t1.micro", "t2.nano", "t2.micro", "t2.small", "t2.medium", "t2.large", "t2.xlarge", "t2.2xlarge", "m1.small", "m1.medium", "m1.large", "m1.xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m4.16xlarge", "m2.xlarge", "m2.2xlarge", "m2.4xlarge", "cr1.8xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "x1.16xlarge", "x1.32xlarge", "i2.xlarge", "i2.2xlarge", "i2.4xlarge", "i2.8xlarge", "i3.large", "i3.xlarge", "i3.2xlarge", "i3.4xlarge", "i3.8xlarge", "i3.16xlarge", "hi1.4xlarge", "hs1.8xlarge", "c1.medium", "c1.xlarge", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "cc1.4xlarge", "cc2.8xlarge", "g2.2xlarge", "g2.8xlarge", "g3.4xlarge", "g3.8xlarge", "g3.16xlarge", "cg1.4xlarge", "p2.xlarge", "p2.8xlarge", "p2.16xlarge", "d2.xlarge", "d2.2xlarge", "d2.4xlarge", "d2.8xlarge", "f1.2xlarge", "f1.16xlarge"
    #   resp.instances[0].kernel_id #=> String
    #   resp.instances[0].key_name #=> String
    #   resp.instances[0].launch_time #=> Time
    #   resp.instances[0].monitoring.state #=> String, one of "disabled", "disabling", "enabled", "pending"
    #   resp.instances[0].placement.availability_zone #=> String
    #   resp.instances[0].placement.affinity #=> String
    #   resp.instances[0].placement.group_name #=> String
    #   resp.instances[0].placement.host_id #=> String
    #   resp.instances[0].placement.tenancy #=> String, one of "default", "dedicated", "host"
    #   resp.instances[0].placement.spread_domain #=> String
    #   resp.instances[0].platform #=> String, one of "Windows"
    #   resp.instances[0].private_dns_name #=> String
    #   resp.instances[0].private_ip_address #=> String
    #   resp.instances[0].product_codes #=> Array
    #   resp.instances[0].product_codes[0].product_code_id #=> String
    #   resp.instances[0].product_codes[0].product_code_type #=> String, one of "devpay", "marketplace"
    #   resp.instances[0].public_dns_name #=> String
    #   resp.instances[0].public_ip_address #=> String
    #   resp.instances[0].ramdisk_id #=> String
    #   resp.instances[0].state.code #=> Integer
    #   resp.instances[0].state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #   resp.instances[0].state_transition_reason #=> String
    #   resp.instances[0].subnet_id #=> String
    #   resp.instances[0].vpc_id #=> String
    #   resp.instances[0].architecture #=> String, one of "i386", "x86_64"
    #   resp.instances[0].block_device_mappings #=> Array
    #   resp.instances[0].block_device_mappings[0].device_name #=> String
    #   resp.instances[0].block_device_mappings[0].ebs.attach_time #=> Time
    #   resp.instances[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.instances[0].block_device_mappings[0].ebs.status #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.instances[0].block_device_mappings[0].ebs.volume_id #=> String
    #   resp.instances[0].client_token #=> String
    #   resp.instances[0].ebs_optimized #=> Boolean
    #   resp.instances[0].ena_support #=> Boolean
    #   resp.instances[0].hypervisor #=> String, one of "ovm", "xen"
    #   resp.instances[0].iam_instance_profile.arn #=> String
    #   resp.instances[0].iam_instance_profile.id #=> String
    #   resp.instances[0].instance_lifecycle #=> String, one of "spot", "scheduled"
    #   resp.instances[0].elastic_gpu_associations #=> Array
    #   resp.instances[0].elastic_gpu_associations[0].elastic_gpu_id #=> String
    #   resp.instances[0].elastic_gpu_associations[0].elastic_gpu_association_id #=> String
    #   resp.instances[0].elastic_gpu_associations[0].elastic_gpu_association_state #=> String
    #   resp.instances[0].elastic_gpu_associations[0].elastic_gpu_association_time #=> String
    #   resp.instances[0].network_interfaces #=> Array
    #   resp.instances[0].network_interfaces[0].association.ip_owner_id #=> String
    #   resp.instances[0].network_interfaces[0].association.public_dns_name #=> String
    #   resp.instances[0].network_interfaces[0].association.public_ip #=> String
    #   resp.instances[0].network_interfaces[0].attachment.attach_time #=> Time
    #   resp.instances[0].network_interfaces[0].attachment.attachment_id #=> String
    #   resp.instances[0].network_interfaces[0].attachment.delete_on_termination #=> Boolean
    #   resp.instances[0].network_interfaces[0].attachment.device_index #=> Integer
    #   resp.instances[0].network_interfaces[0].attachment.status #=> String, one of "attaching", "attached", "detaching", "detached"
    #   resp.instances[0].network_interfaces[0].description #=> String
    #   resp.instances[0].network_interfaces[0].groups #=> Array
    #   resp.instances[0].network_interfaces[0].groups[0].group_name #=> String
    #   resp.instances[0].network_interfaces[0].groups[0].group_id #=> String
    #   resp.instances[0].network_interfaces[0].ipv_6_addresses #=> Array
    #   resp.instances[0].network_interfaces[0].ipv_6_addresses[0].ipv_6_address #=> String
    #   resp.instances[0].network_interfaces[0].mac_address #=> String
    #   resp.instances[0].network_interfaces[0].network_interface_id #=> String
    #   resp.instances[0].network_interfaces[0].owner_id #=> String
    #   resp.instances[0].network_interfaces[0].private_dns_name #=> String
    #   resp.instances[0].network_interfaces[0].private_ip_address #=> String
    #   resp.instances[0].network_interfaces[0].private_ip_addresses #=> Array
    #   resp.instances[0].network_interfaces[0].private_ip_addresses[0].association.ip_owner_id #=> String
    #   resp.instances[0].network_interfaces[0].private_ip_addresses[0].association.public_dns_name #=> String
    #   resp.instances[0].network_interfaces[0].private_ip_addresses[0].association.public_ip #=> String
    #   resp.instances[0].network_interfaces[0].private_ip_addresses[0].primary #=> Boolean
    #   resp.instances[0].network_interfaces[0].private_ip_addresses[0].private_dns_name #=> String
    #   resp.instances[0].network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.instances[0].network_interfaces[0].source_dest_check #=> Boolean
    #   resp.instances[0].network_interfaces[0].status #=> String, one of "available", "attaching", "in-use", "detaching"
    #   resp.instances[0].network_interfaces[0].subnet_id #=> String
    #   resp.instances[0].network_interfaces[0].vpc_id #=> String
    #   resp.instances[0].root_device_name #=> String
    #   resp.instances[0].root_device_type #=> String, one of "ebs", "instance-store"
    #   resp.instances[0].security_groups #=> Array
    #   resp.instances[0].security_groups[0].group_name #=> String
    #   resp.instances[0].security_groups[0].group_id #=> String
    #   resp.instances[0].source_dest_check #=> Boolean
    #   resp.instances[0].spot_instance_request_id #=> String
    #   resp.instances[0].sriov_net_support #=> String
    #   resp.instances[0].state_reason.code #=> String
    #   resp.instances[0].state_reason.message #=> String
    #   resp.instances[0].tags #=> Array
    #   resp.instances[0].tags[0].key #=> String
    #   resp.instances[0].tags[0].value #=> String
    #   resp.instances[0].virtualization_type #=> String, one of "hvm", "paravirtual"
    #   resp.owner_id #=> String
    #   resp.requester_id #=> String
    #   resp.reservation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RunInstances AWS API Documentation
    #
    # @overload run_instances(params = {})
    # @param [Hash] params ({})
    def run_instances(params = {}, options = {})
      req = build_request(:run_instances, params)
      req.send_request(options)
    end

    # Launches the specified Scheduled Instances.
    #
    # Before you can launch a Scheduled Instance, you must purchase it and
    # obtain an identifier using PurchaseScheduledInstances.
    #
    # You must launch a Scheduled Instance during its scheduled time period.
    # You can't stop or reboot a Scheduled Instance, but you can terminate
    # it as needed. If you terminate a Scheduled Instance before the current
    # scheduled time period ends, you can launch it again after a few
    # minutes. For more information, see [Scheduled Instances][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. For more information, see [Ensuring Idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Integer] :instance_count
    #   The number of instances.
    #
    #   Default: 1
    #
    # @option params [required, Types::ScheduledInstancesLaunchSpecification] :launch_specification
    #   The launch specification. You must match the instance type,
    #   Availability Zone, network, and platform of the schedule that you
    #   purchased.
    #
    # @option params [required, String] :scheduled_instance_id
    #   The Scheduled Instance ID.
    #
    # @return [Types::RunScheduledInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RunScheduledInstancesResult#instance_id_set #instance_id_set} => Array&lt;String&gt;
    #
    #
    # @example Example: To launch a Scheduled Instance in a VPC
    #
    #   # This example launches the specified Scheduled Instance in a VPC.
    #
    #   resp = client.run_scheduled_instances({
    #     instance_count: 1, 
    #     launch_specification: {
    #       iam_instance_profile: {
    #         name: "my-iam-role", 
    #       }, 
    #       image_id: "ami-12345678", 
    #       instance_type: "c4.large", 
    #       key_name: "my-key-pair", 
    #       network_interfaces: [
    #         {
    #           associate_public_ip_address: true, 
    #           device_index: 0, 
    #           groups: [
    #             "sg-12345678", 
    #           ], 
    #           subnet_id: "subnet-12345678", 
    #         }, 
    #       ], 
    #     }, 
    #     scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance_id_set: [
    #       "i-1234567890abcdef0", 
    #     ], 
    #   }
    #
    # @example Example: To launch a Scheduled Instance in EC2-Classic
    #
    #   # This example launches the specified Scheduled Instance in EC2-Classic.
    #
    #   resp = client.run_scheduled_instances({
    #     instance_count: 1, 
    #     launch_specification: {
    #       iam_instance_profile: {
    #         name: "my-iam-role", 
    #       }, 
    #       image_id: "ami-12345678", 
    #       instance_type: "c4.large", 
    #       key_name: "my-key-pair", 
    #       placement: {
    #         availability_zone: "us-west-2b", 
    #       }, 
    #       security_group_ids: [
    #         "sg-12345678", 
    #       ], 
    #     }, 
    #     scheduled_instance_id: "sci-1234-1234-1234-1234-123456789012", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance_id_set: [
    #       "i-1234567890abcdef0", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_scheduled_instances({
    #     client_token: "String",
    #     dry_run: false,
    #     instance_count: 1,
    #     launch_specification: { # required
    #       block_device_mappings: [
    #         {
    #           device_name: "String",
    #           ebs: {
    #             delete_on_termination: false,
    #             encrypted: false,
    #             iops: 1,
    #             snapshot_id: "String",
    #             volume_size: 1,
    #             volume_type: "String",
    #           },
    #           no_device: "String",
    #           virtual_name: "String",
    #         },
    #       ],
    #       ebs_optimized: false,
    #       iam_instance_profile: {
    #         arn: "String",
    #         name: "String",
    #       },
    #       image_id: "String", # required
    #       instance_type: "String",
    #       kernel_id: "String",
    #       key_name: "String",
    #       monitoring: {
    #         enabled: false,
    #       },
    #       network_interfaces: [
    #         {
    #           associate_public_ip_address: false,
    #           delete_on_termination: false,
    #           description: "String",
    #           device_index: 1,
    #           groups: ["String"],
    #           ipv_6_address_count: 1,
    #           ipv_6_addresses: [
    #             {
    #               ipv_6_address: "Ipv6Address",
    #             },
    #           ],
    #           network_interface_id: "String",
    #           private_ip_address: "String",
    #           private_ip_address_configs: [
    #             {
    #               primary: false,
    #               private_ip_address: "String",
    #             },
    #           ],
    #           secondary_private_ip_address_count: 1,
    #           subnet_id: "String",
    #         },
    #       ],
    #       placement: {
    #         availability_zone: "String",
    #         group_name: "String",
    #       },
    #       ramdisk_id: "String",
    #       security_group_ids: ["String"],
    #       subnet_id: "String",
    #       user_data: "String",
    #     },
    #     scheduled_instance_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id_set #=> Array
    #   resp.instance_id_set[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RunScheduledInstances AWS API Documentation
    #
    # @overload run_scheduled_instances(params = {})
    # @param [Hash] params ({})
    def run_scheduled_instances(params = {}, options = {})
      req = build_request(:run_scheduled_instances, params)
      req.send_request(options)
    end

    # Starts an Amazon EBS-backed AMI that you've previously stopped.
    #
    # Instances that use Amazon EBS volumes as their root devices can be
    # quickly stopped and started. When an instance is stopped, the compute
    # resources are released and you are not billed for hourly instance
    # usage. However, your root partition Amazon EBS volume remains,
    # continues to persist your data, and you are charged for Amazon EBS
    # volume usage. You can restart your instance at any time. Each time you
    # transition an instance from stopped to started, Amazon EC2 charges a
    # full instance hour, even if transitions happen multiple times within a
    # single hour.
    #
    # Before stopping an instance, make sure it is in a state from which it
    # can be restarted. Stopping an instance does not preserve data stored
    # in RAM.
    #
    # Performing this operation on an instance that uses an instance store
    # as its root device returns an error.
    #
    # For more information, see [Stopping Instances][1] in the *Amazon
    # Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html
    #
    # @option params [required, Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    # @option params [String] :additional_info
    #   Reserved.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::StartInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartInstancesResult#starting_instances #starting_instances} => Array&lt;Types::InstanceStateChange&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instances({
    #     instance_ids: ["String"], # required
    #     additional_info: "String",
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.starting_instances #=> Array
    #   resp.starting_instances[0].current_state.code #=> Integer
    #   resp.starting_instances[0].current_state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #   resp.starting_instances[0].instance_id #=> String
    #   resp.starting_instances[0].previous_state.code #=> Integer
    #   resp.starting_instances[0].previous_state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StartInstances AWS API Documentation
    #
    # @overload start_instances(params = {})
    # @param [Hash] params ({})
    def start_instances(params = {}, options = {})
      req = build_request(:start_instances, params)
      req.send_request(options)
    end

    # Stops an Amazon EBS-backed instance.
    #
    # We don't charge hourly usage for a stopped instance, or data transfer
    # fees; however, your root partition Amazon EBS volume remains,
    # continues to persist your data, and you are charged for Amazon EBS
    # volume usage. Each time you transition an instance from stopped to
    # started, Amazon EC2 charges a full instance hour, even if transitions
    # happen multiple times within a single hour.
    #
    # You can't start or stop Spot instances, and you can't stop instance
    # store-backed instances.
    #
    # When you stop an instance, we shut it down. You can restart your
    # instance at any time. Before stopping an instance, make sure it is in
    # a state from which it can be restarted. Stopping an instance does not
    # preserve data stored in RAM.
    #
    # Stopping an instance is different to rebooting or terminating it. For
    # example, when you stop an instance, the root device and any other
    # devices attached to the instance persist. When you terminate an
    # instance, the root device and any other devices attached during the
    # instance launch are automatically deleted. For more information about
    # the differences between rebooting, stopping, and terminating
    # instances, see [Instance Lifecycle][1] in the *Amazon Elastic Compute
    # Cloud User Guide*.
    #
    # When you stop an instance, we attempt to shut it down forcibly after a
    # short while. If your instance appears stuck in the stopping state
    # after a period of time, there may be an issue with the underlying host
    # computer. For more information, see [Troubleshooting Stopping Your
    # Instance][2] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html
    #
    # @option params [required, Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @option params [Boolean] :force
    #   Forces the instances to stop. The instances do not have an opportunity
    #   to flush file system caches or file system metadata. If you use this
    #   option, you must perform file system check and repair procedures. This
    #   option is not recommended for Windows instances.
    #
    #   Default: `false`
    #
    # @return [Types::StopInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopInstancesResult#stopping_instances #stopping_instances} => Array&lt;Types::InstanceStateChange&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_instances({
    #     instance_ids: ["String"], # required
    #     dry_run: false,
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.stopping_instances #=> Array
    #   resp.stopping_instances[0].current_state.code #=> Integer
    #   resp.stopping_instances[0].current_state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #   resp.stopping_instances[0].instance_id #=> String
    #   resp.stopping_instances[0].previous_state.code #=> Integer
    #   resp.stopping_instances[0].previous_state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StopInstances AWS API Documentation
    #
    # @overload stop_instances(params = {})
    # @param [Hash] params ({})
    def stop_instances(params = {}, options = {})
      req = build_request(:stop_instances, params)
      req.send_request(options)
    end

    # Shuts down one or more instances. This operation is idempotent; if you
    # terminate an instance more than once, each call succeeds.
    #
    # If you specify multiple instances and the request fails (for example,
    # because of a single incorrect instance ID), none of the instances are
    # terminated.
    #
    # Terminated instances remain visible after termination (for
    # approximately one hour).
    #
    # By default, Amazon EC2 deletes all EBS volumes that were attached when
    # the instance launched. Volumes attached after instance launch continue
    # running.
    #
    # You can stop, start, and terminate EBS-backed instances. You can only
    # terminate instance store-backed instances. What happens to an instance
    # differs if you stop it or terminate it. For example, when you stop an
    # instance, the root device and any other devices attached to the
    # instance persist. When you terminate an instance, any attached EBS
    # volumes with the `DeleteOnTermination` block device mapping parameter
    # set to `true` are automatically deleted. For more information about
    # the differences between stopping and terminating instances, see
    # [Instance Lifecycle][1] in the *Amazon Elastic Compute Cloud User
    # Guide*.
    #
    # For more information about troubleshooting, see [Troubleshooting
    # Terminating Your Instance][2] in the *Amazon Elastic Compute Cloud
    # User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html
    #
    # @option params [required, Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    #   Constraints: Up to 1000 instance IDs. We recommend breaking up this
    #   request into smaller batches.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::TerminateInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateInstancesResult#terminating_instances #terminating_instances} => Array&lt;Types::InstanceStateChange&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_instances({
    #     instance_ids: ["String"], # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.terminating_instances #=> Array
    #   resp.terminating_instances[0].current_state.code #=> Integer
    #   resp.terminating_instances[0].current_state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #   resp.terminating_instances[0].instance_id #=> String
    #   resp.terminating_instances[0].previous_state.code #=> Integer
    #   resp.terminating_instances[0].previous_state.name #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TerminateInstances AWS API Documentation
    #
    # @overload terminate_instances(params = {})
    # @param [Hash] params ({})
    def terminate_instances(params = {}, options = {})
      req = build_request(:terminate_instances, params)
      req.send_request(options)
    end

    # Unassigns one or more IPv6 addresses from a network interface.
    #
    # @option params [required, Array<String>] :ipv_6_addresses
    #   The IPv6 addresses to unassign from the network interface.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @return [Types::UnassignIpv6AddressesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnassignIpv6AddressesResult#network_interface_id #network_interface_id} => String
    #   * {Types::UnassignIpv6AddressesResult#unassigned_ipv_6_addresses #unassigned_ipv_6_addresses} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unassign_ipv_6_addresses({
    #     ipv_6_addresses: ["String"], # required
    #     network_interface_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_interface_id #=> String
    #   resp.unassigned_ipv_6_addresses #=> Array
    #   resp.unassigned_ipv_6_addresses[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnassignIpv6Addresses AWS API Documentation
    #
    # @overload unassign_ipv_6_addresses(params = {})
    # @param [Hash] params ({})
    def unassign_ipv_6_addresses(params = {}, options = {})
      req = build_request(:unassign_ipv_6_addresses, params)
      req.send_request(options)
    end

    # Unassigns one or more secondary private IP addresses from a network
    # interface.
    #
    # @option params [required, String] :network_interface_id
    #   The ID of the network interface.
    #
    # @option params [required, Array<String>] :private_ip_addresses
    #   The secondary private IP addresses to unassign from the network
    #   interface. You can specify this option multiple times to unassign more
    #   than one IP address.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To unassign a secondary private IP address from a network interface
    #
    #   # This example unassigns the specified private IP address from the specified network interface.
    #
    #   resp = client.unassign_private_ip_addresses({
    #     network_interface_id: "eni-e5aa89a3", 
    #     private_ip_addresses: [
    #       "10.0.0.82", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unassign_private_ip_addresses({
    #     network_interface_id: "String", # required
    #     private_ip_addresses: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnassignPrivateIpAddresses AWS API Documentation
    #
    # @overload unassign_private_ip_addresses(params = {})
    # @param [Hash] params ({})
    def unassign_private_ip_addresses(params = {}, options = {})
      req = build_request(:unassign_private_ip_addresses, params)
      req.send_request(options)
    end

    # Disables detailed monitoring for a running instance. For more
    # information, see [Monitoring Your Instances and Volumes][1] in the
    # *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html
    #
    # @option params [required, Array<String>] :instance_ids
    #   One or more instance IDs.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::UnmonitorInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnmonitorInstancesResult#instance_monitorings #instance_monitorings} => Array&lt;Types::InstanceMonitoring&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unmonitor_instances({
    #     instance_ids: ["String"], # required
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_monitorings #=> Array
    #   resp.instance_monitorings[0].instance_id #=> String
    #   resp.instance_monitorings[0].monitoring.state #=> String, one of "disabled", "disabling", "enabled", "pending"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnmonitorInstances AWS API Documentation
    #
    # @overload unmonitor_instances(params = {})
    # @param [Hash] params ({})
    def unmonitor_instances(params = {}, options = {})
      req = build_request(:unmonitor_instances, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-ec2'
      context[:gem_version] = '1.0.0.rc16'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                     | params                              | :delay   | :max_attempts |
    # | ------------------------------- | ----------------------------------- | -------- | ------------- |
    # | bundle_task_complete            | {#describe_bundle_tasks}            | 15       | 40            |
    # | conversion_task_cancelled       | {#describe_conversion_tasks}        | 15       | 40            |
    # | conversion_task_completed       | {#describe_conversion_tasks}        | 15       | 40            |
    # | conversion_task_deleted         | {#describe_conversion_tasks}        | 15       | 40            |
    # | customer_gateway_available      | {#describe_customer_gateways}       | 15       | 40            |
    # | export_task_cancelled           | {#describe_export_tasks}            | 15       | 40            |
    # | export_task_completed           | {#describe_export_tasks}            | 15       | 40            |
    # | image_available                 | {#describe_images}                  | 15       | 40            |
    # | image_exists                    | {#describe_images}                  | 15       | 40            |
    # | instance_exists                 | {#describe_instances}               | 5        | 40            |
    # | instance_running                | {#describe_instances}               | 15       | 40            |
    # | instance_status_ok              | {#describe_instance_status}         | 15       | 40            |
    # | instance_stopped                | {#describe_instances}               | 15       | 40            |
    # | instance_terminated             | {#describe_instances}               | 15       | 40            |
    # | key_pair_exists                 | {#describe_key_pairs}               | 5        | 6             |
    # | nat_gateway_available           | {#describe_nat_gateways}            | 15       | 40            |
    # | network_interface_available     | {#describe_network_interfaces}      | 20       | 10            |
    # | password_data_available         | {#get_password_data}                | 15       | 40            |
    # | snapshot_completed              | {#describe_snapshots}               | 15       | 40            |
    # | spot_instance_request_fulfilled | {#describe_spot_instance_requests}  | 15       | 40            |
    # | subnet_available                | {#describe_subnets}                 | 15       | 40            |
    # | system_status_ok                | {#describe_instance_status}         | 15       | 40            |
    # | volume_available                | {#describe_volumes}                 | 15       | 40            |
    # | volume_deleted                  | {#describe_volumes}                 | 15       | 40            |
    # | volume_in_use                   | {#describe_volumes}                 | 15       | 40            |
    # | vpc_available                   | {#describe_vpcs}                    | 15       | 40            |
    # | vpc_exists                      | {#describe_vpcs}                    | 1        | 5             |
    # | vpc_peering_connection_deleted  | {#describe_vpc_peering_connections} | 15       | 40            |
    # | vpc_peering_connection_exists   | {#describe_vpc_peering_connections} | 15       | 40            |
    # | vpn_connection_available        | {#describe_vpn_connections}         | 15       | 40            |
    # | vpn_connection_deleted          | {#describe_vpn_connections}         | 15       | 40            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        bundle_task_complete: Waiters::BundleTaskComplete,
        conversion_task_cancelled: Waiters::ConversionTaskCancelled,
        conversion_task_completed: Waiters::ConversionTaskCompleted,
        conversion_task_deleted: Waiters::ConversionTaskDeleted,
        customer_gateway_available: Waiters::CustomerGatewayAvailable,
        export_task_cancelled: Waiters::ExportTaskCancelled,
        export_task_completed: Waiters::ExportTaskCompleted,
        image_available: Waiters::ImageAvailable,
        image_exists: Waiters::ImageExists,
        instance_exists: Waiters::InstanceExists,
        instance_running: Waiters::InstanceRunning,
        instance_status_ok: Waiters::InstanceStatusOk,
        instance_stopped: Waiters::InstanceStopped,
        instance_terminated: Waiters::InstanceTerminated,
        key_pair_exists: Waiters::KeyPairExists,
        nat_gateway_available: Waiters::NatGatewayAvailable,
        network_interface_available: Waiters::NetworkInterfaceAvailable,
        password_data_available: Waiters::PasswordDataAvailable,
        snapshot_completed: Waiters::SnapshotCompleted,
        spot_instance_request_fulfilled: Waiters::SpotInstanceRequestFulfilled,
        subnet_available: Waiters::SubnetAvailable,
        system_status_ok: Waiters::SystemStatusOk,
        volume_available: Waiters::VolumeAvailable,
        volume_deleted: Waiters::VolumeDeleted,
        volume_in_use: Waiters::VolumeInUse,
        vpc_available: Waiters::VpcAvailable,
        vpc_exists: Waiters::VpcExists,
        vpc_peering_connection_deleted: Waiters::VpcPeeringConnectionDeleted,
        vpc_peering_connection_exists: Waiters::VpcPeeringConnectionExists,
        vpn_connection_available: Waiters::VpnConnectionAvailable,
        vpn_connection_deleted: Waiters::VpnConnectionDeleted
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
