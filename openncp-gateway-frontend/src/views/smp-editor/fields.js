export const fields = {
  uri: {
    name: 'Endpoint URI',
    type: 'url',
    tooltip: 'URL of the service exposed as a secured Web Service',
    rules: []
  },
  issuanceType: {
    name: 'Identity Provider Issuance Type',
    tooltip: 'Identity Provider Issuance Type',
    type: 'text',
    rules: []
  },
  serviceActivationDate: {
    name: 'Service Activation Date',
    tooltip: 'Activation date of the configuration file',
    type: 'datetime-local',
    rules: [
      (_this, v) => {
        if (_this.dataset.serviceExpirationDate) {
          return (
            new Date(v).getTime() <
              new Date(_this.dataset.serviceExpirationDate).getTime() ||
            'Expiration date should be later than activation date'
          )
        }
      }
    ]
  },
  serviceExpirationDate: {
    name: 'Service Expiration Date',
    tooltip: 'Expiration date of the configuration file',
    type: 'datetime-local',
    rules: [
      (_this, v) => {
        return (
          new Date(v).getTime() >
            new Date(_this.dataset.serviceActivationDate).getTime() ||
          'Expiration date should be later than activation date'
        )
      }
    ]
  },
  certificate: {
    name: 'Certificate',
    tooltip: 'Certificate',
    type: 'text',
    rules: []
  },
  serviceDescription: {
    name: 'Service Description',
    tooltip:
      'Description of the service configured (Production, Pre-Production, Training)',
    type: 'text',
    rules: []
  },
  technicalContactUrl: {
    name: 'Technical Contact URL',
    tooltip: 'Mail address of the Support',
    type: 'text',
    rules: []
  },
  technicalInformationUrl: {
    name: 'Technical Information URL',
    tooltip: 'URL Address of the eHNCP Organization',
    type: 'url',
    rules: []
  },
  extension: {
    name: 'Extension',
    tooltip:
      'National Search Mask as XML format and valid according the XSD ehdsi-ism-2020.xsd',
    type: 'file',
    rules: []
  },
  requireBusinessLevelSignature: {
    name: 'Require Business Level Signature',
    tooltip: 'Require Business Level Signature',
    type: 'text',
    rules: []
  },
  minimumAuthLevel: {
    name: 'Minimum Auth Level',
    tooltip: 'Minimum Auth Level',
    type: 'text',
    rules: []
  },
  redirectHref: {
    name: 'Redirect URL',
    tooltip: 'Redirect URL',
    type: 'url',
    rules: []
  },
  certificateUID: {
    name: 'Certificate UID',
    tooltip: 'Certificate UID',
    type: 'text',
    rules: []
  }
}
